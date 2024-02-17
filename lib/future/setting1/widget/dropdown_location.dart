import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/widget/text_translate_manager.dart';
import '../cubit/location_cubit/location_selection_cubit.dart';

class LocationSelectionWidget extends StatelessWidget {
  LocationSelectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final locationCubit = BlocProvider.of<LocationSelectionCubit>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        titleText('الدولة', Colors.black, StyleText.h3),
        const SizedBox(height: 10),
        Directionality(
          textDirection: TextDirection.rtl,
          child: DropdownButtonFormField<String>(
            borderRadius: BorderRadius.circular(20),
            hint: Row(
              children: [
                SvgPicture.asset('assets/images/svg/iconcounty.svg'),
                const SizedBox(
                  width: 10,
                ),
                const Text('اختر الدولة'),
              ],
            ),
            icon: const Icon(Icons.arrow_drop_down_sharp),
            onChanged: (String? newValue) {
              locationCubit.updateLocation(country: newValue, context: context);
            },
            items: locationCubit.countries.map((String country) {
              return DropdownMenuItem<String>(
                value: country,
                child: Text(country),
              );
            }).toList(),
          ),
        ),
        const SizedBox(height: 20.0),
        titleText('المدينة', Colors.black, StyleText.h3),
        const SizedBox(height: 10),
        Directionality(
          textDirection: TextDirection.rtl,
          child: DropdownButtonFormField<String>(
            borderRadius: BorderRadius.circular(20),
            icon: const Icon(Icons.arrow_drop_down_sharp),
            hint: Row(
              children: [
                SvgPicture.asset('assets/images/svg/icnlocation.svg'),
                SizedBox(
                  width: 10,
                ),
                Text('اختر المدينة'),
              ],
            ),
            onChanged: (String? newValue) {
              locationCubit.updateLocation(city: newValue, context: context);
            },
            items: locationCubit.cities.map((String city) {
              return DropdownMenuItem<String>(
                value: city,
                child: Text(city),
              );
            }).toList(),
          ),
        ),
        const SizedBox(height: 20.0),
        titleText('المنطقة', Colors.black, StyleText.h3),
        const SizedBox(height: 10),
        Directionality(
            textDirection: TextDirection.rtl,
            child: DropdownButtonFormField<String>(
              borderRadius: BorderRadius.circular(20),
              icon: Icon(Icons.arrow_drop_down_sharp),
              hint: Row(
                children: [
                  SvgPicture.asset('assets/images/svg/icnlocation.svg'),
                  SizedBox(
                    width: 10,
                  ),
                  Text('اختر المنطقة'),
                ],
              ),
              onChanged: (String? newValue) {
                locationCubit.updateLocation(
                    region: newValue, context: context);
              },
              items: locationCubit.regions.map((String region) {
                return DropdownMenuItem<String>(
                  value: region,
                  child: Text(region),
                );
              }).toList(),
            )),
      ],
    );
  }

  Widget titleText(String title, Color color, StyleText styleText) {
    return Align(
      alignment: AlignmentDirectional.centerEnd,
      child: TranslateText(
        styleText: styleText,
        colorText: color,
        fontWeight: FontWeight.w500,
        text: title,
      ),
    );
  }
}
