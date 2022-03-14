import 'package:flutter/material.dart';

class HeaderSimpleWithBackButon extends StatelessWidget {

  String nomConseiller = "Un conseiller";

  HeaderSimpleWithBackButon(String nomConseiller){this.nomConseiller = nomConseiller;}

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
      ],
    );
  }
}