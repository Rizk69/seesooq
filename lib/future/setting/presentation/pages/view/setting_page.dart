import 'package:flutter/material.dart';

import 'setting_view.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(

      body: Column(
        children: [

          SettingView(),
        ],
      ),
    );
  }
}
