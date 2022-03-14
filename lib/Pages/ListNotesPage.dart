import 'package:flutter/material.dart';
import 'package:untitled/Pages/Component/CardNote.dart';
import 'package:untitled/Pages/Component/HeaderWithTitle.dart';
import 'package:untitled/Pages/Component/PermanentSideBar.dart';
import 'package:untitled/Styles/colors.dart';

class ListNotesPage extends StatefulWidget {
  @override
  State<ListNotesPage> createState() => ListNotesPageState();

  bool add;

  ListNotesPage(this.add);
}

class ListNotesPageState extends State<ListNotesPage> {
  String dropdownValue = " Les + anciens";


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PermanentSideBar(),
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.only(top: 60, bottom: 20, left: 50, right: 50),
            child: Column(
              children: [
                HeaderWithTitle("Les précédents rendez-vous de : Pierre Lene", "", "David Mériaud"),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/note');
                      },
                      child: const Text("Ajouter une note de RDV"),
                      style: ElevatedButton.styleFrom(
                        primary: AppColors.greenbtn,
                        textStyle: const TextStyle(fontSize: 18),
                      ),
                    ),
                    const Expanded(child: Text("")),
                    const Text(
                      "Trier Par :",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: AppColors.black,
                          fontSize: 14),
                    ),
                    Material(
                      child: DropdownButton<String>(
                        value: dropdownValue,
                        elevation: 16,
                        style: const TextStyle(color: Colors.black),
                        underline: Container(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                        items: <String>[' Les + anciens', ' Les + récents']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Row(
                              children: [Text(value)],
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
                if (widget.add) CardNote(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
