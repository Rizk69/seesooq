import 'package:flutter_easyloading/flutter_easyloading.dart';

void loadingWidget() {
  EasyLoading.show(status: 'Loading...', maskType: EasyLoadingMaskType.black, dismissOnTap: true);
}

void dismissLoading() {
  EasyLoading.dismiss();
}

void showError(String message) {
  EasyLoading.showError(message);
}
