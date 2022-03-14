import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:untitled/Styles/colors.dart';

class PopupAddMeeting extends StatefulWidget {
  @override
  State<PopupAddMeeting> createState() => PopupAddMeetingState();
}

class PopupAddMeetingState extends State<PopupAddMeeting> {
  String date = "";
  DateTime selectedDate = DateTime.now();
  TextEditingController inputDate = TextEditingController();
  TextEditingController inputTime = TextEditingController();

  @override
  void initState() {
    inputDate.text = ""; // on set la valeur initiale du textfield inputDate
    inputTime.text = ""; // on set la valeur initiale du textfield inputTime
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.lightGreen,
      title: Row(
        children: [
          IconButton(
              onPressed: () => {Navigator.of(context).pop(context)},
              icon: SvgPicture.asset('Images/arrow_back.svg')),
          const Expanded(
            child: Text(""),
          ),
          const Text(
            "Ajouter un Rendez-vous",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.darkGray),
          ),
          const Expanded(
            child: Text(""),
          ),
        ],
      ),
      content: Padding(
        padding: const EdgeInsets.all(10.0),
        child: DefaultTextStyle(
          style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.darkGray),
          child: SizedBox(
            width: 500,
            height: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: TextField(
                        controller: inputDate,
                        //editing controller of this TextField
                        decoration: const InputDecoration(
                            icon: Icon(Icons.calendar_today),
                            //icon of text field
                            labelText: "Choisir une date" //label text of field
                            ),
                        readOnly: true,
                        //set it true, so that user will not able to edit text
                        onTap: () async {
                          await _selectDate(context);
                        }),
                  ),
                ), // input Date
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: TextField(
                        controller: inputTime,
                        // editing controller of this TextField
                        decoration: const InputDecoration(
                            icon: Icon(Icons.access_time), // icon of text field
                            labelText:
                                "Choisir une heure" // label text of field
                            ),
                        readOnly: true,
                        // set it true, so that user will not able to edit text
                        onTap: () async {
                          await _selectTime(context);
                        }),
                  ),
                ), // input Time
              ],
            ),
          ),
        ),
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            // button confirmer
            height: 35,
            width: 150,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                color: AppColors.greenbtn,
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pop(context);
              },
              child: const Text("Confirmer",
                  style: TextStyle(
                      color: AppColors.darkGray, fontWeight: FontWeight.bold)),
            ),
          ),
        ),
      ],
    );
  }

  // fonction pour choisir la date
  _selectDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2010),
        lastDate: DateTime(2101),
        helpText: "Selectionner une date de rendez-vous",
        cancelText: "Annuler",
        confirmText: "Valider");
    if (selected != null) {
      // print(selected);  // format de sortie de selected => 2022-03-10 00:00:00.000
      String formattedDate = DateFormat('dd-MM-yyyy').format(selected);
      // print(formattedDate); // La date de sortie formatté utilise le package intl =>  10-03-2022

      setState(() {
        inputDate.text =
            formattedDate; //on set la date formatté à la valeur du Textfield.
      });
    }
  }

  // fonction pour choisir l'heure
  _selectTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (pickedTime != null) {
      // print(pickedTime.format(context));   // sortie => 10:15 AM
      DateTime parsedTime =
          DateFormat.jm().parse(pickedTime.format(context).toString());
      // convertie en Datetime pour permettre de formatter comme on le souhaite plus tard
      // print(parsedTime); // sortie => 1970-01-01 10:15:00.000
      String formattedTime = DateFormat('HH:mm').format(parsedTime);
      // print(formattedTime); // sortie => 10:15
      //DateFormat() provient du package intl, on peut formatter l'heure sous différent pattern.

      setState(() {
        inputTime.text = formattedTime; //set the value of text field.
      });
    }
  }
}
