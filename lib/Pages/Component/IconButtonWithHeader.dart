import 'package:flutter/material.dart';
import 'package:untitled/Pages/Component/HeaderSimple.dart';
import 'package:untitled/Pages/Component/HeaderWithTitle.dart';
import 'package:untitled/Pages/HomePage.dart';
import 'package:untitled/Pages/ProjectList.dart';
import 'package:untitled/Styles/colors.dart';
import '../../Styles/colors.dart' as customColors;
import '../../Styles/fonts.dart' as customFonts;
import '../../Styles/spacing.dart' as customSpacing;

class IconButtonWithHeader extends StatelessWidget {
  IconData icon = Icons.add;
  String buttonLabel = "Label du bouton";
  String sectionLabel = "Label de la section";
  String sectionTitle = "Titre de la section";
  var navigateTo = HomePage();

  IconButtonWithHeader(IconData icon, String buttonLabel, String sectionLabel,
      String sectionTitle, var nvaigateTo) {
    this.icon = icon;
    this.buttonLabel = buttonLabel;
    this.sectionLabel = sectionLabel;
    this.sectionTitle = sectionTitle;
    this.navigateTo = navigateTo;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(top: customSpacing.AppSpacing.sp3),
                      child: ElevatedButton(
                        onPressed: () {
                          print("Button with label '$buttonLabel' pressed");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => navigateTo),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              customColors.AppColors.lightGreen),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  right: customSpacing.AppSpacing.sp3),
                              child: Icon(
                                icon,
                                color: customColors.AppColors.white,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  right: customSpacing.AppSpacing.sp3),
                              child: Text(
                                buttonLabel,
                                style: const TextStyle(
                                    color: customColors.AppColors.white,
                                    fontFamily:
                                        customFonts.AppFontFamily.primaryFont,
                                    decoration: TextDecoration.none,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.normal),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
              top: customSpacing.AppSpacing.sp6,
              bottom: customSpacing.AppSpacing.sp3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                sectionLabel,
                style: const TextStyle(
                    color: customColors.AppColors.black,
                    fontSize: 8,
                    decoration: TextDecoration.none),
              ),
              Container(
                margin: EdgeInsets.only(top: customSpacing.AppSpacing.sp3),
                child: Text(
                  sectionTitle,
                  style: const TextStyle(
                      fontSize: 35,
                      color: AppColors.black75,
                      decoration: TextDecoration.none),
                ),
              ),
              Row(
                children: List.generate(
                  150 ~/ 10,
                  (index) => Expanded(
                    child: Container(
                      color: AppColors.greenbtn,
                      height: 2,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
