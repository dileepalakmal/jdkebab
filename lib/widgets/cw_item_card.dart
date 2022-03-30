import 'package:flutter/material.dart';
import '../theme/cs_text.dart';
import './/theme/app_theme.dart';

class CWItemCard extends StatelessWidget {
  const CWItemCard(
      {Key? key,
      required this.iconImage,
      required this.title,
      required this.description,
      required this.onPressed})
      : super(key: key);

  final String iconImage;
  final String title;
  final String description;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 0.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Container(
            color: AppThemeData.appColorBlackDark,
            width: MediaQuery.of(context).size.width/2.6,
            height: 120.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  iconImage,
                  fit: BoxFit.cover,
                  scale: 3.0,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  title,
                  style: CSText().body1Bold,
                ),
              ],
            ),
          ),
        ),
      ),
      onTap: onPressed,
    );
  }
}
