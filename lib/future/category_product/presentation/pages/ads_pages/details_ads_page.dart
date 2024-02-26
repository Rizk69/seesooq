import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opensooq/core/utils/custom_failed_app.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';
import 'package:opensooq/future/category_product/presentation/cubit/add_ads_cubit.dart';
import 'package:opensooq/future/category_product/presentation/cubit/add_ads_state.dart';
import 'package:opensooq/future/category_product/presentation/widgets/dynamic_form_widget.dart';

class DetailsAdsPage extends StatefulWidget {
  const DetailsAdsPage({super.key});

  @override
  State<DetailsAdsPage> createState() => _DetailsAdsPageState();
}

class _DetailsAdsPageState extends State<DetailsAdsPage> {
  int currentStatusIndex = -1;
  int deliveryServiceIndex = -1;
  int paymentMethodIndex = -1;

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: AddAdsCubit.get(context),
      child: BlocBuilder<AddAdsCubit, AddAdsState>(builder: (context, state) {
        return SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TranslateText(
                text: 'adsName',
                styleText: StyleText.h4,
                fontSize: 16,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextFormFiled(
                prefixIcon: false,
                onChanged: (value) {
                  AddAdsCubit.get(context).updateNameForm(value.toString());
                },
              ),
              const SizedBox(
                height: 10,
              ),
              const TranslateText(
                text: 'adsDescription',
                styleText: StyleText.h4,
                fontSize: 16,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextFormFiled(
                prefixIcon: false,
                onChanged: (value) {
                  AddAdsCubit.get(context).updateDescriptionForm(value.toString());
                },
              ),
              const SizedBox(
                height: 20,
              ),
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
