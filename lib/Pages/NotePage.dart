import 'package:flutter/material.dart';
import 'package:untitled/Pages/Component/HeaderWithTitle.dart';
import 'package:untitled/Pages/Component/PermanentSideBar.dart';
import 'package:untitled/Styles/colors.dart';
import 'package:intl/intl.dart';
import 'ListNotesPage.dart';

class NotePage extends StatefulWidget {
  @override
  State<NotePage> createState() => NotePageState();
}

class NotePageState extends State<NotePage> {


  @override
  Widget build(BuildContext context) {
    DateTime Date = new DateTime.now();
    var formatter = new DateFormat('dd/MM/yyyy');
    String formattedDate = formatter.format(Date);
    return Row(
      children: [
        PermanentSideBar(routing: "/folders"),
        Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 60, bottom: 20, left: 50, right: 50),
              child: Column(
                children: [
                  HeaderWithTitle("Rendez-vous du : " + formattedDate.toString(),"","David Mériaud"),
                   Flexible(
                     child: Padding(
                       padding:
                       EdgeInsets.only(top: 20, bottom: 30, right: 90),
                       child: Material(
                         child: TextField(
                           minLines: 10,
                           maxLines: null,
                           decoration: InputDecoration(
                             filled: true,
                             fillColor: AppColors.greyTextField,
                             hintText: "Block Note RDV",
                             border: InputBorder.none,
                           ),
                         ),
                       ),
                     ),
                   ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      child: const Text("Valider"),
                      style: ElevatedButton.styleFrom(primary: AppColors.greenbtn,textStyle: const TextStyle(
                      fontSize: 18)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ListNotesPage(true),
                          ),
                        );
                      },
                  ),
                  )
                ],
              ),
            )
        )
      ],
    );
  }

  void onPressed() {
    //Méthode bouton valider note
  }
}