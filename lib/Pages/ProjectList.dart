import 'package:flutter/material.dart';
import 'package:untitled/Pages/Component/HeaderSimple.dart';
import 'package:untitled/Pages/Component/HeaderSimpleWithBackButon.dart';
import 'package:untitled/Pages/Component/HeaderWithTitle.dart';
import 'package:untitled/Pages/Component/IconButtonWithHeader.dart';
import 'package:untitled/Pages/Component/PermanentSideBar.dart';
import 'package:untitled/Pages/HomePage.dart';
import '../Styles/colors.dart' as customColors;
import '../Styles/fonts.dart' as customFonts;
import '../Styles/spacing.dart' as customSpacing;
import 'Component/TitleHeader.dart';

class ProjectList extends StatefulWidget {
  @override
  State<ProjectList> createState() => ProjectListState();
}

class ProjectListState extends State<ProjectList> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PermanentSideBar(),
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.only(
                top: customSpacing.AppSpacing.sp3,
                bottom: customSpacing.AppSpacing.sp3,
                left: customSpacing.AppSpacing.sp6,
                right: customSpacing.AppSpacing.sp6),
            child: Column(
              children: [
                HeaderSimpleWithBackButon("David Meriaud"),
                IconButtonWithHeader(
                    Icons.add,
                    "Créer un nouveau projet",
                    "Cliquez sur le projet de révovation que vous souhaitez suivre",
                    "Liste des projets de rénovation du propriétaire: {TODO}",
                    HomePage()),
              ],
            ),
          ),
        )
      ],
    );
  }
}
