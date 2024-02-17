import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:multi_image_picker_view/multi_image_picker_view.dart';
import 'package:opensooq/future/category_product/data/repositories/category_repo.dart';
import 'package:opensooq/future/category_product/presentation/cubit/add_ads_state.dart';
import 'package:opensooq/main.dart';

@lazySingleton
class AddAdsCubit extends Cubit<AddAdsState> {
  AddAdsCubit({required this.categoryRepo}) : super(const AddAdsState());

  final CategoryRepo categoryRepo;

  static AddAdsCubit get(context) => BlocProvider.of(context);

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
    maxImages: 3,
  );

  Future<void> uploadPhoto() async {
    final pickedImages = await controller.pickImages();
    if (pickedImages) {
      emit(state.copyWith(images: controller.images as List<ImageFile>));
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

    print('===========sssss');
    print(state.attributesForm.attributes);
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
