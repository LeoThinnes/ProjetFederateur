import 'package:flutter/material.dart';
import 'package:untitled/Styles/colors.dart';

class HeaderWithTitleAndNoSubtitle extends StatelessWidget {
  String nomConseiller = "Un conseiller";
  String title = "Un titre";

  HeaderWithTitleAndNoSubtitle(this.title, this.nomConseiller);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Material(
              child: IconButton(
                onPressed: () => {Navigator.of(context).pop(context)},
                icon: Icon(Icons.arrow_back, color: Colors.black),
              ),
            ),
            Expanded(
              child: Container(),
            ),
            Text(
              nomConseiller,
              style: const TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.black,
                  fontSize: 14),
            ),
            const Icon(Icons.account_circle, color: Colors.black),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 60, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 5.0),
                width: 2000,
                child: Text(
                  title,
                  style: const TextStyle(
                      fontSize: 35,
                      color: AppColors.black75,
                      decoration: TextDecoration.none),
                ),
              ),
              const Divider(
                color: AppColors.greenbtn,
                thickness: 3, // TODO: Remember to uniformize this value
              )
            ],
          ),
        ),
      ],
    );
  }
}
