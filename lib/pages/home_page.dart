import 'package:flutter/material.dart';

import '../services/page_navigation.dart';
import '../widgets/cw_copyright_bar.dart';
import '../theme/about_app.dart';
import '../theme/app_theme.dart';
import '../theme/cs_text.dart';
import '../widgets/cw_header_card.dart';
import '../widgets/cw_item_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _headerCards() {
    return CWHeaderCard(
        cardImage: 'assets/images/shish-kebab-g9527661e4_1920.jpg', onPressed: () {});
  }

  Widget _itemCards(
      String image, String title, String description, VoidCallback onPressed) {
    return CWItemCard(
        iconImage: image,
        title: title,
        description: description,
        onPressed: onPressed);
  }

  Widget _bodyTop() {
    return Column(
      children: [
        const SizedBox(
          height: 10.0,
        ),
        Text(
          AboutApp.appName,
          style: CSText().headline6Bold,
        ),
        const SizedBox(
          height: 5.0,
        ),
        Text(
          "Delicious food for you",
          style: CSText().body1SemiBold,
        ),
        const SizedBox(
          height: 10.0,
        ),
        _headerCards(),
        const SizedBox(
          height: 10.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _itemCards('assets/icons/order_l.png', "Order",
                "Place your order now.", PageNavigation(context).gotoOrderPage),
            _itemCards('assets/icons/menu_l.png', "Menu", "View the menu here.",
                PageNavigation(context).gotoMenuPage),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _itemCards('assets/icons/info_l.png', "Info", "This is about us.",
                PageNavigation(context).gotoInformationPage),
            _itemCards(
                'assets/icons/contact_l.png',
                "Contact",
                "Give us a quick call.",
                PageNavigation(context).gotoContactPage),
          ],
        ),
        const SizedBox(
          height: 25.0,
        ),
      ],
    );
  }

  Widget _bodyBottom() {
    return const CWCopyrightBar();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: AppThemeData.appColorBlack,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            _bodyTop(),
            _bodyBottom(),
          ],
        ),
      ),
    ));
  }
}
