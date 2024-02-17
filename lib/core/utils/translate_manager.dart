import 'package:flutter/material.dart';

import '../../config/locale/app_localizations.dart';

class Translate {
  static String key({required BuildContext context, required String key}) {
    return (AppLocalizations.of(context)?.translate(key) ?? '').toString();
  }
}
