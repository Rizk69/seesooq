import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';

final dynamicLinkParams = DynamicLinkParameters(
  link: Uri.parse("https://www.seesooq.com/"),
  uriPrefix: "https://seesooq.page.link",
  androidParameters:
      const AndroidParameters(packageName: "com.seesooq.opensooq.android"),
  iosParameters: const IOSParameters(bundleId: "com.seesooq.opensooq.ios"),
);

class DynamicLinkHandler {
  FirebaseDynamicLinks dynamicLinks = FirebaseDynamicLinks.instance;

  buildDynamicLink() {}
  Future<void> initDynamicLinks() async {
    dynamicLinks.onLink.listen((dynamicLinkData) {
      // Listen and retrieve dynamic links here
      final String deepLink = dynamicLinkData.link.toString(); // Get DEEP LINK
      // Ex: https://namnp.page.link/product/013232
      final String path = dynamicLinkData.link.path; // Get PATH
      // Ex: product/013232
      if (deepLink.isEmpty) return;
      handleDeepLink(path);
    }).onError((error) {
      print('onLink error');
      print(error.message);
    });
    initUniLinks();
  }

  Future<void> initUniLinks() async {
    try {
      final initialLink = await dynamicLinks.getInitialLink();
      if (initialLink == null) return;
      handleDeepLink(initialLink.link.path);
    } catch (e) {
      // Error
    }
  }

  void handleDeepLink(String path) {
    // navigate to detailed product screen
  }
  static Future<String> createLink(
      String link, String title, String type) async {
    final dynamicLinkParams = DynamicLinkParameters(
      link: Uri.parse("https://www.seesooq.com/"),
      uriPrefix: "https://seesooq.page.link",
      androidParameters: const AndroidParameters(
        packageName: "com.seesooq.opensooq",
        minimumVersion: 1,

      ),
      iosParameters: const IOSParameters(
        bundleId: "com.seesooq.opensooq",
        appStoreId: "6444847602",
        minimumVersion: "1.0.0",
      ),
      googleAnalyticsParameters: GoogleAnalyticsParameters(
        source: "twitter",
        medium: "social",
        campaign: "$type invite",
      ),
      // socialMetaTagParameters: SocialMetaTagParameters(
      //   title: "$title - Example of a Dynamic Link",
      //   imageUrl: Uri.parse("https://example.com/image.png"),
      // ),
    );
    final dynamicLink =
        await FirebaseDynamicLinks.instance.buildShortLink(dynamicLinkParams);

    return dynamicLink.shortUrl.toString();
  }

  // create dynamic link for product
}
