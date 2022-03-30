import 'package:flutter/material.dart';
import '../theme/cs_text.dart';
import './/theme/app_theme.dart';

class CWHeaderCard extends StatelessWidget {
  const CWHeaderCard(
      {Key? key, required this.cardImage, required this.onPressed})
      : super(key: key);

  final String cardImage;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Card(
          elevation: 0.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Container(
            color: AppThemeData.appColorDarkGrey,
            width: MediaQuery.of(context).size.width,
            height: 200.0,
            child: Stack(children: [
              Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Stack(
                    children: [
                      Container(
                          color: AppThemeData.appColorLightGrey,
                          child: Column(
                            children: [
                              Image.asset(
                                cardImage,
                                fit: BoxFit.cover,
                              ),
                            ],
                          )),
                    ],
                  )),
              Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Stack(
                    children: [
                      Container(
                          color: AppThemeData.appColorBlack,
                          child: Column(
                            children: [
                              Image.asset(
                                cardImage,
                                fit: BoxFit.cover,
                              ),
                            ],
                          )),
                      Container(
                        height: 300.0,
                        decoration: BoxDecoration(
                            color: AppThemeData.pureColorWhite,
                            gradient: LinearGradient(
                                begin: FractionalOffset.topCenter,
                                end: FractionalOffset.bottomCenter,
                                colors: [
                                  AppThemeData.appColorBlackWithOpacity,
                                  AppThemeData.appColorBlack,
                                ],
                                stops: const [
                                  0.2,
                                  1.0
                                ])),
                      )
                    ],
                  )),
              Positioned(
                top: 20,
                left: 20,
                right: 5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Order to you\ndoor step",
                          style: CSText().headline4Bold,
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "HURRY UP",
                          style: CSText().subtitle1SemiBold,
                        ),
                      ],
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(right: 10.0),
                    //   child: Image.asset(
                    //     'assets/gif/food_menu.gif',
                    //     scale: 7.0,
                    //   ),
                    // ),
                  ],
                ),
              ),
            ]),
          )),
      onTap: onPressed,
    );
  }
}
