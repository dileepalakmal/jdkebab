import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../pages/information_page.dart';
import '../pages/web_view_page.dart';
import '../theme/about_app.dart';

class PageNavigation {
  final BuildContext context;

  PageNavigation(this.context);

  gotoOrderPage() {
    debugPrint("gotoOrderPage");
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) =>
            const WebViewPage(pageURL: "https://www.jdkebab.com"),
      ),
      (route) => true,
    );
  }

  gotoMenuPage() {
    debugPrint("gotoMenuPage");
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => const WebViewPage(
            pageURL:
                "https://www.jdkebab.com/branch/restaurants-menu-croydon"),
      ),
      (route) => true,
    );
  }

  gotoInformationPage() {
    debugPrint("gotoInformationPage");
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => const InformationPage(),
      ),
      (route) => true,
    );
  }

  gotoContactPage() {
    launch("tel://${AboutApp.appPhone}");
  }
}
