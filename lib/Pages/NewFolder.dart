import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/Bloc/Folder_bloc.dart';
import 'package:untitled/Bloc/Folder_event.dart';
import 'package:untitled/Bloc/Folder_state.dart';
import 'package:untitled/Pages/Component/HeaderWithTitle.dart';
import 'package:untitled/Pages/Component/PermanentSideBar.dart';
import 'package:flutter/cupertino.dart';
import '../Routes/route.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Pages/Folders.dart';
import '../Styles/colors.dart' as customColors;

class NewFolder extends StatefulWidget {
  @override
  State<NewFolder> createState() => NewFolderState();
}

class NewFolderState extends State<NewFolder> {
  final _formKey = GlobalKey<FormState>();
  String dropdownValue = 'Situation';
  List<String> listName = [];
  final emailController = TextEditingController();
  final budgetController = TextEditingController();
  final adresseController = TextEditingController();
  final dosSAController = TextEditingController();
  final revController = TextEditingController();
  final telController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FolderBloc, FolderState>(
      listener: (context, state) {
        if (state is FolderOnSuccessState) {
          if (state.envValidate) {
            Navigator.of(context).pop();
          }
        }
      },
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            PermanentSideBar(),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 60,
                  left: 100,
                  top: 50,
                  bottom: 20,
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      HeaderWithTitle(
                          "Creer un nouveau dossier",
                          "Entrez les informations du propriétaire",
                          "David Mérieau"),
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 20, bottom: 20, left: 20, right: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Expanded(
                                    child: Row(
                                      children: [
                                        const Expanded(child: Text("")),
                                        Material(
                                          child: SizedBox(
                                            width: 200.0,
                                            child: TextFormField(
                                              decoration: const InputDecoration(
                                                filled: true,
                                                fillColor: Colors.white,
                                                hoverColor: Colors.white,
                                                hintText: 'Prenom *',
                                              ),
                                              validator: (value) {
                                                if (value!.isEmpty) {
                                                  return 'Veuillez saisir un prenom';
                                                } else {
                                                  listName.add(value);
                                                }
                                              },
                                            ),
                                          ),
                                        ),
                                        const Expanded(child: Text("")),
                                        Material(
                                          child: SizedBox(
                                            width: 200.0,
                                            child: TextFormField(
                                              decoration: const InputDecoration(
                                                filled: true,
                                                fillColor: Colors.white,
                                                hoverColor: Colors.white,
                                                hintText: 'Nom *',
                                              ),
                                              validator: (value) {
                                                if (value!.isEmpty) {
                                                  return 'Veuillez saisir un nom';
                                                } else {
                                                  listName.add(value);
                                                }
                                              },
                                            ),
                                          ),
                                        ),
                                        const Expanded(child: Text("")),
                                      ],
                                    ),
                                  ),
                                  Material(
                                    child: SizedBox(
                                      width: 200.0,
                                      child: DropdownButton<String>(
                                        value: dropdownValue,
                                        elevation: 16,
                                        style: const TextStyle(
                                            color: Colors.black),
                                        underline: Container(),
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            dropdownValue = newValue!;
                                            listName.add(dropdownValue);
                                          });
                                        },
                                        items: <String>[
                                          'Situation',
                                          'Retraité',
                                          'Employé',
                                          'Sans Emploi'
                                        ].map<DropdownMenuItem<String>>(
                                            (String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Row(
                                              children: [Text(value)],
                                            ),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 20, bottom: 20, left: 20, right: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Expanded(child: Text("")),
                                  Material(
                                    child: SizedBox(
                                      width: 570.0,
                                      child: TextFormField(
                                        controller: emailController,
                                        decoration: const InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white,
                                          hoverColor: Colors.white,
                                          hintText: 'Email',
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Expanded(child: Text("")),
                                  Material(
                                    child: SizedBox(
                                      width: 200.0,
                                      child: TextFormField(
                                        controller: budgetController,
                                        decoration: const InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white,
                                          hoverColor: Colors.white,
                                          hintText: 'Budget',
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 20, bottom: 20, left: 20, right: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Expanded(
                                    child: Row(
                                      children: [
                                        const Expanded(child: Text("")),
                                        Material(
                                          child: SizedBox(
                                            width: 200.0,
                                            child: TextFormField(
                                              controller: revController,
                                              decoration: const InputDecoration(
                                                filled: true,
                                                fillColor: Colors.white,
                                                hoverColor: Colors.white,
                                                hintText: 'Revenu fiscal',
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Expanded(child: Text("")),
                                        Material(
                                          child: SizedBox(
                                            width: 200.0,
                                            child: TextFormField(
                                              controller: telController,
                                              decoration: const InputDecoration(
                                                filled: true,
                                                fillColor: Colors.white,
                                                hoverColor: Colors.white,
                                                hintText: 'Téléphone',
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Expanded(child: Text("")),
                                      ],
                                    ),
                                  ),
                                  Material(
                                    child: SizedBox(
                                      width: 200.0,
                                      child: TextFormField(
                                        controller: dosSAController,
                                        decoration: const InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white,
                                          hoverColor: Colors.white,
                                          hintText: 'N° Dossier SArenov',
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 100),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Expanded(child: Text("")),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 20, right: 100),
                                    child: Material(
                                      child: SizedBox(
                                        width: 200.0,
                                        child: ElevatedButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                            customColors.AppColors.greenbtn,
                                          )),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: const [
                                              Text("Valider"),
                                              Icon(Icons.arrow_forward),
                                            ],
                                          ),
                                          onPressed: () async {
                                            // Retourne true si le formulaire est valide, sinon false
                                            if (_formKey.currentState!
                                                .validate()) {
                                              // Affiche si le formulaire est valide
                                              var listJson = {
                                                "folder_num": "Test1234",
                                                "id_customer": 1,
                                                "id_housing": 2,
                                                "tax_income": 10000,
                                                "situation": "Celibataire"
                                              };
                                              BlocProvider.of<FolderBloc>(
                                                      context)
                                                  .add(addFolderEvent(
                                                      listJson));
                                            }
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
