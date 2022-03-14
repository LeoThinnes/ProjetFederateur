import 'package:flutter/material.dart';
import 'package:untitled/Styles/colors.dart';

class TitleHeader extends StatelessWidget {

  String topTitle = "Une titre haut";
  String title = "Un titre";

  TitleHeader(String title, String topTitle){
    this.title = title;
    this.topTitle = topTitle;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(this.topTitle, style: TextStyle(color: Colors.black, fontSize: 8, decoration: TextDecoration.none)),
        Container(
          margin: const EdgeInsets.only(top: 5.0),
          width: 2000,
          child: Text(
            this.title,
            style: TextStyle(fontSize: 35, color: AppColors.black75, decoration: TextDecoration.none),
          ),
        ),
        Row(
          children: List.generate(150~/10, (index) => Expanded(
            child: Container(
              color: AppColors.greenbtn,
              height: 2,
            ),
          )),
        ),
      ],
    );
  }
}