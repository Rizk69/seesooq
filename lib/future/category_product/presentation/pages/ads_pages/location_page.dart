import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:opensooq/core/utils/custom_button_widget.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';
import 'package:opensooq/future/category_product/presentation/cubit/add_ads_cubit.dart';
import 'package:opensooq/future/location/presentation/cubit/location_cubit.dart';
import 'package:opensooq/future/location/presentation/cubit/location_state.dart';

class LocationAdsPage extends StatelessWidget {
  const LocationAdsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LocationCubit()..getGovernorate(),
      child: BlocBuilder<LocationCubit, LocationState>(builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              TranslateText(styleText: StyleText.h4, text: 'city'.tr(), colorText: Colors.black),
              const SizedBox(height: 16),
              if (state.governorate.isNotEmpty)
                CustomDropdown.search(
                    items: state.governorate.map((e) => e.title ?? '').toList(),
                    onChanged: (value) {
                      // get the id of the selected governorate
                      var id = state.governorate.firstWhere((element) => element.title == value).id?.toInt() ?? 0;
                      AddAdsCubit.get(context).updateGovernorateForm(governorateId: id.toString(), governorateName: value);
                      context.read<LocationCubit>().getCities(id: state.governorate.firstWhere((element) => element.title == value).id?.toInt() ?? 0);
                    },
                    hideSelectedFieldWhenExpanded: true,
                    decoration: const CustomDropdownDecoration(
                      hintStyle: TextStyle(color: Colors.grey),
                    )),
              const SizedBox(height: 16),
              TranslateText(styleText: StyleText.h4, text: 'governorate'.tr(), colorText: Colors.black),
              const SizedBox(height: 16),
              if (state.cities.isNotEmpty && state.locationStatus == LocationStatus.loaded)
                CustomDropdown.search(
                    noResultFoundText: 'No Result Found',
                    validateOnChange: true,
                    items: state.cities.map((e) => e.title ?? '').toList(),
                    onChanged: (value) {
                      var id = state.cities.firstWhere((element) => element.title == value).id?.toInt() ?? 0;

                      AddAdsCubit.get(context).updateCityForm(cityId: id.toString(), cityName: value);
                    },
                    hideSelectedFieldWhenExpanded: true,
                    decoration: const CustomDropdownDecoration(
                      hintStyle: TextStyle(color: Colors.grey),
                    )),
              const SizedBox(height: 16),
              // ClipRRect(
              //   borderRadius: BorderRadius.circular(8),
              //   child: SizedBox(
              //     height: context.height * 0.4,
              //     child: GoogleMap(
              //       initialCameraPosition: const CameraPosition(
              //         target: LatLng(24.7136, 46.6753),
              //         zoom: 14.4746,
              //       ),
              //       myLocationButtonEnabled: true,
              //       myLocationEnabled: true,
              //       gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>{
              //         Factory<OneSequenceGestureRecognizer>(
              //           () => EagerGestureRecognizer(),
              //         ),
              //       },
              //       onMapCreated: (GoogleMapController controller) {},
              //     ),
              //   ),
              // ),
              const SizedBox(height: 24),
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: CustomButtonWidget(
                    color: Colors.white,
                    text: 'next'.tr(),
                    onPressed: () {
                      context.goNamed('personal_info_ads');
                    },
                  ))
            ],
          ),
        );
      }),
    );
  }
}
