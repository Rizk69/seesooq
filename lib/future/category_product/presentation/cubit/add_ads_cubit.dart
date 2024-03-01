import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_image_picker_view/multi_image_picker_view.dart';
import 'package:opensooq/core/utils/cache_helper.dart';
import 'package:opensooq/core/utils/loadin_app.dart';
import 'package:opensooq/di.dart' as di;
import 'package:opensooq/future/category_product/data/repositories/category_repo.dart';
import 'package:opensooq/future/category_product/presentation/cubit/add_ads_state.dart';
import 'package:opensooq/future/user_local_model.dart';
import 'package:opensooq/main.dart';

class AddAdsCubit extends Cubit<AddAdsState> {
  AddAdsCubit({required this.categoryRepo}) : super(const AddAdsState()) {
    getLocalUser();
  }

  final CategoryRepo categoryRepo;

  static AddAdsCubit get(context) => BlocProvider.of(context);

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

// this section Add Ads

  void selectSubCategory({required String subCategory}) {
    emit(state.copyWith(selectedSubCategory: subCategory));
  }

  Future<void> getAttributesForAds() async {
    emit(state.copyWith(attributesAdsStatus: AttributesAdsStatus.loading));
    await categoryRepo.getAttributesForAds(subCategory: state.selectedSubCategory).then((value) => value.fold((l) {
          if (kDebugMode) {
            emit(state.copyWith(attributesAdsStatus: AttributesAdsStatus.error));
            print(l);
          }
        }, (r) {
          emit(state.copyWith(attributesAdsModel: r, attributesAdsStatus: AttributesAdsStatus.loaded));
        }));
  }

  final controller = MultiImagePickerController(
    picker: (bool allowMultiple) async {
      // use image_picker or file_picker to pick images `pickImages`
      final pickedImages = await pickImagesUsingImagePicker(allowMultiple);
      // convert the picked image list to `ImageFile` list and return it.
      return pickedImages.map((e) => convertXFileToImageFile(e)).toList();
    },
    maxImages: 20,
  );

  Future<void> uploadPhoto() async {
    final pickedImages = await controller.pickImages();
    if (pickedImages) {
      List<File> files = controller.images.map((e) => File(e.path.toString())).toList();

      emit(state.copyWith(images: controller.images as List<ImageFile>, attributesForm: state.attributesForm.copyWith(images: files)));
    }
  }

  void removePhoto({required int index}) async {
    List<ImageFile> list = List.from(state.images);
    list.removeAt(index);
    emit(state.copyWith(images: list));
  }

  void updateAttributesForm({required Map<int, dynamic> attributes}) {
    var newAttributes = (state.attributesForm.attributes ?? {});

    newAttributes = {...newAttributes, ...attributes};

    emit(state.copyWith(attributesForm: state.attributesForm.copyWith(attributes: newAttributes)));
  }

  void updateCityForm({required String cityId, required String cityName}) {
    emit(state.copyWith(attributesForm: state.attributesForm.copyWith(cityId: cityId), city: cityName));
  }

  void updateGovernorateForm({required String governorateId, required String governorateName}) {
    emit(
      state.copyWith(attributesForm: state.attributesForm.copyWith(governorateId: governorateId), governorate: governorateName),
    );
  }

  void updateNameForm(String name) {
    emit(state.copyWith(attributesForm: state.attributesForm.copyWith(title: name)));
  }

  void updatePriceForm(num price) {
    emit(state.copyWith(attributesForm: state.attributesForm.copyWith(price: price.toString())));
  }

  void updateDescriptionForm(String description) {
    emit(state.copyWith(attributesForm: state.attributesForm.copyWith(description: description)));
  }

  Future<void> getLocalUser() async {
    final user = await di.sl<CacheHelper>().hiveGetDataById<UserLocalModel>(0);

    nameController.text = user?.user?.name ?? '';
    emailController.text = user?.user?.phone ?? '';
    phoneController.text = user?.user?.phone ?? '';
  }

  Future<void> createAdd() async {
    emit(state.copyWith(attributesAdsStatus: AttributesAdsStatus.loading));
    await categoryRepo.createAds(attributesForm: state.attributesForm).then((value) => value.fold((l) {
          showError(l.message.toString());
        }, (r) {}));
  }

// end section Add Ads
}

Future<List<ImageFile>> pickFilesUsingFilePicker(bool allowMultiple) async {
  FilePickerResult? result = await FilePicker.platform.pickFiles(
    allowMultiple: allowMultiple,
    withData: kIsWeb,
  );
  if (result != null && result.files.isNotEmpty) {
    return result.files
        .map(
          (e) => convertPlatformFileToImageFile(e),
        )
        .toList();

    /*
    the below code can be used if not using convertPlatformFileToImageFile extension.
    return result.files
        .map(
          (e) => ImageFile(UniqueKey().toString(),
              name: e.name,
              extension: e.extension!,
              bytes: e.bytes,
              path: !kIsWeb ? e.path : null),
        )
        .toList();*/
  }
  return [];
}
