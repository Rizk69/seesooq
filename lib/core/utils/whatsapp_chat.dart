import 'package:url_launcher/url_launcher_string.dart';

void openInWhatsapp(String phoneNumber) async {
  var url = "whatsapp://send?phone=$phoneNumber&text=${Uri.encodeComponent('Hello I am from SeeSooq App, I want to chat with you.')}";
  if (!await launchUrlString(
    url,
  )) {
    throw 'Could not launch $url';
  }
}

void callNumber(String phoneNumber) async {
  var url = "tel:$phoneNumber";
  if (!await launchUrlString(
    url,
  )) {
    throw 'Could not launch $url';
  }
}
