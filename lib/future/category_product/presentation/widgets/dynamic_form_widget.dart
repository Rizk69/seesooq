import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';
import 'package:opensooq/future/category_product/data/models/attributes_ads_model.dart';
import 'package:opensooq/future/category_product/presentation/cubit/add_ads_cubit.dart';
import 'package:opensooq/future/category_product/presentation/cubit/add_ads_state.dart';
import 'package:opensooq/future/category_product/presentation/widgets/custom_choice_widget.dart';

class DynamicFormWidget extends StatefulWidget {
  const DynamicFormWidget({
    super.key,
    required this.name,
    required this.type,
    required this.options,
    required this.optionId,
  });

  final String name;
  final int optionId;
  final String type;
  final List<Children> options;

  @override
  State<DynamicFormWidget> createState() => _DynamicFormWidgetState();
}

class _DynamicFormWidgetState extends State<DynamicFormWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddAdsCubit, AddAdsState>(builder: (context, state) {
      return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (widget.options.isNotEmpty && widget.type == 'select') ...[
              TranslateText(
                text: widget.name,
                styleText: StyleText.h4,
                fontSize: 16,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomDropdown.search(
                items: widget.options.map((children) => children).toList(),
                initialItem: widget.options
                    .where((element) =>
                        state.attributesForm.attributes.containsKey(widget.optionId) &&
                        element.id == state.attributesForm.attributes[widget.optionId])
                    .firstOrNull,
                validator: (value) => value == null ? 'Please select a value' : null,
                expandedHeaderPadding: const EdgeInsets.all(10),
                listItemBuilder: (context, item, isSelected, onItemSelect) => InkWell(
                  onTap: onItemSelect,
                  child: TranslateText(
                    text: item.title ?? '',
                    styleText: StyleText.h6,
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                hintText: widget.name,
                headerBuilder: (context, selectedItem) => TranslateText(
                  text: selectedItem.title ?? '',
                  styleText: StyleText.h6,
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
                onChanged: (value) {
                  var cubit = AddAdsCubit.get(context);
                  cubit.updateAttributesForm(attributes: {widget.optionId: value.id?.toInt() ?? 0});
                },
                canCloseOutsideBounds: true,
                searchHintText: 'Search ...',
                hideSelectedFieldWhenExpanded: true,
                decoration: const CustomDropdownDecoration(
                  hintStyle: TextStyle(color: Colors.grey),
                ),
                validateOnChange: false,
              ),
            ],
            if (widget.options.isNotEmpty && widget.type == 'radio') ...[
              TranslateText(
                text: widget.name,
                styleText: StyleText.h4,
                fontSize: 16,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomChoiceWidget(
                options: widget.options,
                index: widget.options.indexWhere((element) =>
                    state.attributesForm.attributes.containsKey(widget.optionId) && element.id == state.attributesForm.attributes[widget.optionId]),
                onSelected: (optionId) {
                  var cubit = AddAdsCubit.get(context);
                  // widget.optionId == QuestionId
                  cubit.updateAttributesForm(attributes: {widget.optionId: optionId});
                },
              ),
            ],
          ],
        ),
      );
    });
  }
}
