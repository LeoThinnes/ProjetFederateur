import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/Bloc/Folder_bloc.dart';
import 'package:untitled/Bloc/Folder_state.dart';
import 'package:untitled/Pages/Component/HeaderSimple.dart';
import 'package:untitled/Pages/Component/HeaderSimpleWithBackButon.dart';
import 'package:untitled/Pages/Component/PermanentSideBar.dart';
import 'package:untitled/Pages/Component/popupAddMeeting.dart';
import 'package:untitled/Styles/colors.dart';
import 'package:untitled/Pages/Component/popupCreateProjet.dart';
import 'Component/CardNextMeeting.dart';
import 'Component/HeaderSimple.dart';

class ShowFolder extends StatefulWidget {
  @override
  State<ShowFolder> createState() => ShowFolderState();
  int id;

  ShowFolder(this.id);
}

class ShowFolderState extends State<ShowFolder> {
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
          children: [
            PermanentSideBar(),
            Expanded(
              flex: 5,
              child: Padding(
                padding:
                    EdgeInsets.only(top: 60, bottom: 20, left: 50, right: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeaderSimpleWithBackButon("David Mériaud"),
                    Text("Espace de " + widget.id.toString(),
                        style: const TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.black,
                            fontSize: 35)),
                    const Divider(thickness: 5, color: AppColors.greenbtn),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            flex: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 35,
                                      alignment: Alignment.centerRight,
                                      decoration: const BoxDecoration(
                                          color: AppColors.greenbtn,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5))),
                                      child: TextButton(
                                        onPressed: () {
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) =>
                                                PopupCreateFolder(),
                                          );
                                        },
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: const <Widget>[
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    right: 9.5, top: 1.6),
                                                child: Icon(Icons.add,
                                                    color: Colors.white),
                                              ),
                                              Text("Créer un nouveau projet",
                                                  style: TextStyle(
                                                      color: Colors.white)),
                                            ]),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Container(
                                        height: 35,
                                        alignment: Alignment.centerRight,
                                        decoration: const BoxDecoration(
                                            color: AppColors.greenbtn,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5))),
                                        child: TextButton(
                                          onPressed: () {
                                            showDialog(
                                              context: context,
                                              builder: (BuildContext context) =>
                                                  PopupAddMeeting(),
                                            );
                                          },
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: const <Widget>[
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 9.5, top: 1.6),
                                                  child: Icon(
                                                      Icons
                                                          .calendar_today_outlined,
                                                      color: Colors.white),
                                                ),
                                                Text("Ajouter un nouveau RDV",
                                                    style: TextStyle(
                                                        color: Colors.white)),
                                              ]
                                          ),
                                        ),
                                      ),
                                    ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children:[
                                  Container(
                                    decoration: const BoxDecoration(
                                      color: AppColors.lightGrey,
                                    ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                    color: AppColors.lightGrey,
                                  ),
                                  child: DefaultTextStyle(
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.darkGray),
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        children: [
                                          Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                const Expanded(child: Text("")),
                                                const Text(
                                                  'Informations client',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20,
                                                      color:
                                                          AppColors.darkGray),
                                                ),
                                                const Expanded(child: Text("")),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(left: 10),
                                                  child: SvgPicture.asset(
                                                    'assets/images/user_edit.svg',
                                                  ),
                                                ),
                                              ]),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 20),
                                            child: Row(
                                              children: const [
                                                Text(
                                                 'Nom :',
                                                 textAlign: TextAlign.left,
                                                 overflow:
                                                     TextOverflow.ellipsis,
                                                  )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 12),
                                            child: Row(
                                              children: const [
                                                Text(
                                                  'Adresse :',
                                                  textAlign: TextAlign.left,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color:
                                                          AppColors.darkGray),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 12),
                                            child: Row(
                                              children: const [
                                                Text(
                                                  'Téléphone :',
                                                  textAlign: TextAlign.left,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color:
                                                          AppColors.darkGray),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 12),
                                            child: Row(
                                              children: const [
                                                Text(
                                                  'Adresse email :',
                                                  textAlign: TextAlign.left,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color:
                                                          AppColors.darkGray),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 12),
                                            child: Row(
                                              children: const [
                                                Text(
                                                  'N° Dossier SaRenov :',
                                                  textAlign: TextAlign.left,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color:
                                                          AppColors.darkGray),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const CardNextMeeting(),
                                ConstrainedBox(
                                  constraints: BoxConstraints(
                                      maxHeight:
                                          MediaQuery.of(context).size.height /
                                              4),
                                  child: const Padding(
                                    padding: EdgeInsets.only(top: 10.0),
                                    child: Material(
                                      child: TextField(
                                        minLines: 10,
                                        maxLines: null,
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: AppColors.greyTextField,
                                          hintText: "Bloc Note RDV",
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
