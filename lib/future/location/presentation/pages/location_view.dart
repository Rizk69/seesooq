import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import 'package:opensooq/core/widget/custom_app_bar.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';
import 'package:opensooq/future/location/presentation/cubit/location_cubit.dart';
import 'package:opensooq/future/location/presentation/cubit/location_state.dart';

class LocationView extends StatefulWidget {
  const LocationView({super.key});

  @override
  State<LocationView> createState() => _LocationViewState();
}

class _LocationViewState extends State<LocationView> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LocationCubit, LocationState>(
        listener: (context, state) {
      if (state.locationStatus == LocationStatus.error) {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('state.message')));
      }
    }, builder: (context, state) {
      return Scaffold(
        appBar: CustomAppBar(
          title: 'location',
          automaticallyImplyLeading: true,
          centerTitle: false,
          iconButton: IconButton(
            padding: EdgeInsets.zero,
            visualDensity: VisualDensity.compact,
            style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.zero)),
            icon: const Icon(Icons.close),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _searchController,
                      onChanged: (value) {
                        if (value.isNotEmpty) {
                          context
                              .read<LocationCubit>()
                              .getPlaces(query: value, language: 'ar');
                        }
                      },
                      decoration: InputDecoration(
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Theme.of(context).primaryColor,
                                  width: 2)),
                          hintText: 'Search by Ad Title or ID'),
                      maxLines: 1,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        _searchController.clear();
                        context.read<LocationCubit>().clearPlaces();
                      },
                      child: const TranslateText(
                        text: 'cancel',
                        styleText: StyleText.h5,
                      ))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ListTile(
                onTap: () {
                  // get current location
                  context
                      .read<LocationCubit>()
                      .getCurrentLocation()
                      .whenComplete(() => context.pop());
                },
                title: const TranslateText(
                  text: 'useCurrentLocation',
                  styleText: StyleText.h5,
                ),
                leading: SvgPicture.asset(
                  'location_place'.toSvg,
                ),
                visualDensity: VisualDensity.compact,
                style: ListTileStyle.list,
              ),
              if (state.locationStatus == LocationStatus.loading)
                const Expanded(
                  child: Center(
                    child: CircularProgressIndicator.adaptive(),
                  ),
                ),
              if (state.locationStatus == LocationStatus.error)
                const Expanded(
                  child: Center(
                    child: TranslateText(
                      styleText: StyleText.h5,
                      text: 'No Data',
                    ),
                  ),
                ),
              if (state.locationStatus == LocationStatus.loaded)
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      var place = state.placeTextModel?.results?[index];
                      return ListTile(
                        onTap: () {
                          context.read<LocationCubit>().getLocationName(
                                place?.name ?? '',
                              );

                          context.pop();
                        },
                        isThreeLine: false,
                        style: ListTileStyle.list,
                        minVerticalPadding: 0,
                        selected: true,
                        title: TranslateText(
                          styleText: StyleText.h5,
                          text: place?.name ?? '',
                        ),

                        // subtitle: Wrap(
                        //   spacing: 20,
                        //   runSpacing: 20,
                        //
                        //   children: place?.types
                        //           ?.map((e) => Container(
                        //     padding: const EdgeInsets.symmetric(
                        //         horizontal: 10, vertical: 5),
                        //               decoration: BoxDecoration(
                        //                   borderRadius:
                        //                       BorderRadius.circular(5),
                        //                   color: Colors.grey[300]),
                        //               child: Text(e)))
                        //           .toList() ??
                        //       [],
                        // ),
                        visualDensity: VisualDensity.compact,
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                        ),
                      );
                    },
                    itemCount: state.placeTextModel?.results?.length ?? 0,
                  ),
                ),
            ],
          ),
        ),
      );
    });
  }
}
