import 'package:flutter/material.dart';
import 'package:untitled/Model/Folder.dart';
import 'package:untitled/Pages/ShowFolder.dart';
import 'package:untitled/Routes/route.dart';
import 'package:untitled/Styles/colors.dart';

class PopupCreateFolder extends StatefulWidget {
  @override
  State<PopupCreateFolder> createState() => PopupCreateFolderState();
}
class PopupCreateFolderState extends State<PopupCreateFolder> {
  bool? _valueIso = false;
  bool? _valueIso2 = false;
  bool? _valueIso3 = false;
  bool? _valueVen = false;
  bool? _valueVen2 = false;
  bool? _valueChau = false;
  bool? _valueChau2 = false;
  bool? _valueChau3 = false;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.lightGreen,
      title: Row(
        children: [
          Material(child: IconButton(onPressed: () => {Navigator.of(context).pop(context)}, icon: Icon(Icons.arrow_back, color: Colors.black))),
          Expanded(child: Text(""),),
          Text("Création d'un projet"),
          Expanded(child: Text(""),),
        ],
      ),
      content: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
            width: 800,
            height: 300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SizedBox(width: 200,child: Text("Nom du projet:")),
                      Material(
                        child: SizedBox(
                          width: 200.0,
                          height: 25,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              filled: false,
                              fillColor: Colors.white,
                              hoverColor: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Expanded(child: Text(""),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: [
                    SizedBox(width: 200,child: Text("Adresse du projet: ")),
                    Material(
                      child: SizedBox(
                        width: 200.0,
                        height: 25,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            filled: false,
                            fillColor: Colors.white,
                            hoverColor: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Expanded(child: Text(""),),
                  ],),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Types de travaux :"),
                ),
                Padding(padding: const EdgeInsets.all(10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: Text("")),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left:8.0,right: 8.0),
                                  child: Text("Isolation"),
                                ),
                                decoration: const BoxDecoration(
                                    color: AppColors.greenbtn)
                            ),
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: _valueIso,
                                onChanged: (val) {
                                  setState(() {
                                    _valueIso = val;
                                  });
                                },
                              ),
                              Text("Isolation des combles"),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: _valueIso2,
                                onChanged: (val) {
                                  setState(() {
                                    _valueIso2 = val;
                                  });
                                },
                              ),
                              Text("Isolation thermique des fenêtres"),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: _valueIso3,
                                onChanged: (val) {
                                  setState(() {
                                    _valueIso3 = val;
                                  });
                                },
                              ),
                              Text("Isolation des murs par l'exterieur"),
                            ],
                          ),
                        ],
                      ),
                      Expanded(child: Text("")),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                                child: Text("Chauffage"),
                              ),
                                decoration: const BoxDecoration(
                                    color: AppColors.greenbtn)
                            ),
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: _valueChau,
                                onChanged: (val) {
                                  setState(() {
                                    _valueChau = val;
                                  });
                                },
                              ),
                              Text("Pompe à chaleur air/eau"),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: _valueChau2,
                                onChanged: (val) {
                                  setState(() {
                                    _valueChau2 = val;
                                  });
                                },
                              ),
                              Text("Chauffage solaire"),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: _valueChau3,
                                onChanged: (val) {
                                  setState(() {
                                    _valueChau3 = val;
                                  });
                                },
                              ),
                              Text("Chaudière à granulés"),
                            ],
                          ),
                        ],
                      ),
                      Expanded(child: Text("")),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                                  child: Text("Ventilation"),
                                ),
                                decoration: const BoxDecoration(
                                    color: AppColors.greenbtn)
                            ),
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: _valueIso,
                                onChanged: (val) {
                                  setState(() {
                                    _valueIso = val;
                                  });
                                },
                              ),
                              Text("Ventilation double flux"),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: _valueVen,
                                onChanged: (val) {
                                  setState(() {
                                    _valueVen = val;
                                  });
                                },
                              ),
                              Text("Ventilation simple flux"),
                            ],
                          ),
                        ],
                      ),
                      Expanded(child: Text("")),
                    ],
                  ),
                ),
              ],
            ),
        ),
      ),
      actions: <Widget>[
        Container(
          height: 35,
          width: 150,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
              color: AppColors.greenbtn,
              borderRadius: BorderRadius.all(
                  Radius.circular(5))),
          child: TextButton(
            onPressed: () {
              Navigator.of(context).pop(context);
            },
            child: Text("Créer le projet", style: TextStyle(color: Colors.white)),
          ),
        ),
      ],
    );
  }
}

