import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:opensooq/core/utils/custom_failed_app.dart';
import 'package:opensooq/core/utils/media_query_values.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            height: 50,
            child: TextFormFiledApp(
              autoFocus: true,
              hintText: 'search'.tr(),
              prefixIcon: 'search_bar',
              suffixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'jordan'.toPng,
                  width: 20,
                  height: 20,
                ),
              ),
              textEditingController: TextEditingController(),
            ),
          ),
        ],
      ),
    );
  }
}
