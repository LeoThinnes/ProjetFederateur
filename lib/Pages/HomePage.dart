import 'package:flutter/material.dart';
import 'package:untitled/Pages/Component/HeaderWithTitle.dart';
import 'package:untitled/Pages/Component/HeaderWithTitleAndNoSubtitle.dart';
import 'package:untitled/Pages/Component/PermanentSideBar.dart';
import 'package:untitled/Pages/Component/HeaderSimple.dart';
import 'package:untitled/Styles/colors.dart';
import 'package:untitled/Styles/fonts.dart';
import 'package:untitled/Styles/spacing.dart';
import 'Component/HeaderSimple.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PermanentSideBar(),
        Expanded(
          flex: 4,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 60,
              bottom: 20,
              left: 50,
              right: 50,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderWithTitleAndNoSubtitle("Accueil", "David Mériaud"),
                SizedBox(
                  height: 80,
                  width: double.infinity,
                  child: Row(
                    children: [
                      // Zone du bouton de gauche (le bouton lui n'est pas forcément aussi grand que la zone complète)
                      Container(
                        decoration: const BoxDecoration(
                          color: AppColors.greenbtn,
                          borderRadius: BorderRadius.all(
                            Radius.circular(5.0),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(AppSpacing.base.toDouble()),
                          child: TextButton(
                            onPressed: () => {print("oui")},
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Créer un dossier",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: AppFontFamily.primaryFont,
                                    fontSize: 14,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      // Zone de la barre de recherche
                      Expanded(
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: AppSpacing.sp6),
                          child: Expanded(
                            child: Material(
                              child: Container(
                                height: 40,
                                child: TextField(
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white70,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50.0),
                                    ),
                                    hintText: "Rechercher un propriétaire",
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      // Zone du bouton de droite
                      Container(
                        decoration: const BoxDecoration(
                          color: AppColors.greenbtn,
                          borderRadius: BorderRadius.all(
                            Radius.circular(5.0),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(AppSpacing.base.toDouble()),
                          child: TextButton(
                            onPressed: () => {print("oui")},
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.search,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Rechercher",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: AppFontFamily.primaryFont,
                                    fontSize: 14,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  // color: Colors.green,
                  width: MediaQuery.of(context).size.width / 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: AppSpacing.base.toDouble(),
                            left: AppSpacing.base.toDouble()),
                        child: const Text(
                          "Mes prochains rendez-vous",
                          style: TextStyle(
                            fontFamily: AppFontFamily.primaryFont,
                            color: AppColors.greenbtn,
                            decoration: TextDecoration.none,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: AppSpacing.sp3,
                            ),
                            child: Column(
                              children: [
                                Divider(),
                                Row(
                                  children: [
                                    const Text(
                                      "Le lundi 14 mars à 14h15",
                                      style: TextStyle(
                                        fontFamily: AppFontFamily.primaryFont,
                                        color: AppColors.darkBlue,
                                        decoration: TextDecoration.none,
                                        fontSize: 12.0,
                                      ),
                                    ),
                                    const Expanded(
                                      child: Center(
                                        child: Text(
                                          "Lensnu Quentin",
                                          style: TextStyle(
                                            fontFamily:
                                                AppFontFamily.primaryFont,
                                            color: AppColors.darkBlue,
                                            decoration: TextDecoration.none,
                                            fontSize: 12.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Material(
                                      child: IconButton(
                                        // color: Colors.white,
                                        icon: const Icon(
                                          Icons.person_search_rounded,
                                          color: AppColors.darkBlue,
                                        ),
                                        onPressed: () => {print("oui")},
                                      ),
                                    )
                                  ],
                                ),
                                Divider(),
                                Row(
                                  children: [
                                    const Text(
                                      "Le jeudi 15 mars à 17h30",
                                      style: TextStyle(
                                        fontFamily: AppFontFamily.primaryFont,
                                        color: AppColors.darkBlue,
                                        decoration: TextDecoration.none,
                                        fontSize: 12.0,
                                      ),
                                    ),
                                    const Expanded(
                                      child: Center(
                                        child: Text(
                                          "Toupie Hugo",
                                          style: TextStyle(
                                            fontFamily:
                                                AppFontFamily.primaryFont,
                                            color: AppColors.darkBlue,
                                            decoration: TextDecoration.none,
                                            fontSize: 12.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Material(
                                      child: IconButton(
                                        // color: Colors.white,
                                        icon: const Icon(
                                          Icons.person_search_rounded,
                                          color: AppColors.darkBlue,
                                        ),
                                        onPressed: () => {print("oui")},
                                      ),
                                    )
                                  ],
                                ),
                                Divider(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
