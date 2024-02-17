import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opensooq/future/category_product/presentation/cubit/add_ads_cubit.dart';
import 'package:opensooq/future/category_product/presentation/cubit/add_ads_state.dart';
import 'package:opensooq/future/category_product/presentation/widgets/dynamic_form_widget.dart';

class DetailsAdsPage extends StatefulWidget {
  const DetailsAdsPage({super.key, required this.cubit});

  final AddAdsCubit cubit;

  @override
  State<DetailsAdsPage> createState() => _DetailsAdsPageState();
}

class _DetailsAdsPageState extends State<DetailsAdsPage> {
  int currentStatusIndex = -1;
  int deliveryServiceIndex = -1;
  int paymentMethodIndex = -1;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: widget.cubit,
      child: BlocBuilder<AddAdsCubit, AddAdsState>(builder: (context, state) {
        return SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...state.attributesAdsModel?.attributes
                      ?.map((e) => DynamicFormWidget(
                            name: e.title ?? '',
                            type: e.type ?? '',
                            options: e.children ?? [],
                            optionId: e.id?.toInt() ?? 0,
                            // optionId: e.id?.toInt() ?? 0,
                          ))
                      .toList() ??
                  []
            ],
          ),
        );
      }),
    );
  }
}
