import 'package:flutter/material.dart';
import 'package:untitled/Styles/colors.dart';

class HeaderWithTitle extends StatelessWidget {

  String nomConseiller = "Un conseiller";
  String topTitle = "Une titre haut";
  String title = "Un titre";

  HeaderWithTitle(String title, String topTitle, String nomConseiller){
    this.title = title;
    this.topTitle = topTitle;
    this.nomConseiller = nomConseiller;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Material(child: IconButton(onPressed: () => {Navigator.of(context).pop(context)}, icon: Icon(Icons.arrow_back, color: Colors.black))),
            Expanded(child: Container()),
            Text(this.nomConseiller, style: TextStyle(decoration: TextDecoration.none, color: Colors.black, fontSize: 14)),
            Icon(Icons.account_circle, color: Colors.black),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 60, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(this.topTitle, style: TextStyle(color: Colors.black, fontSize: 14, decoration: TextDecoration.none)),
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
          ),
        ),
      ],
    );
  }
}