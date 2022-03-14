import 'package:flutter/material.dart';

class HeaderSimple extends StatelessWidget {

  String nomConseiller = "Un conseiller";

  HeaderSimple(String nomConseiller){this.nomConseiller = nomConseiller;}

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(this.nomConseiller, style: TextStyle(decoration: TextDecoration.none, color: Colors.black, fontSize: 14)),
            Icon(Icons.account_circle, color: Colors.black),
          ],
        ),
      ],
    );
  }
}