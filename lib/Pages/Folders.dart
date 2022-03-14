import 'package:untitled/Model/Folder.dart';
import 'package:untitled/Pages/Component/HeaderSimple.dart';
import 'package:untitled/Pages/Component/HeaderWithTitle.dart';
import 'package:untitled/Pages/Component/PermanentSideBar.dart';
import 'package:untitled/Pages/ListNotesPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Styles/colors.dart' as customColors;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/Bloc/Folder_bloc.dart';
import 'package:untitled/Bloc/Folder_state.dart';
import 'package:untitled/Bloc/Folder_event.dart';
import '../Styles/colors.dart' as customColors;
import '../Routes/route.dart';
import './Component/folder_line.dart';

class Folders extends StatefulWidget {
  @override
  State<Folders> createState() => FoldersState();
}

class FoldersState extends State<Folders> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FolderBloc, FolderState>(
      builder: (context, state) {
        if (state is FolderInitialState) {
          BlocProvider.of<FolderBloc>(context).add(allFolderEvent());
          return const CircularProgressIndicator(
            semanticsLabel: 'Linear progress indicator',
          );
        } else if (state is FolderLoadingState) {
          return const CircularProgressIndicator(
            semanticsLabel: 'Linear progress indicator',
          );
        } else if (state is FolderOnSuccessState) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              PermanentSideBar(),
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.only(
                      right: 60, left: 100, top: 50, bottom: 20),
                  child: Column(
                    children: [
                      HeaderSimple("David Meriau"),
                      Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: Row(
                          children: [
                            ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                customColors.AppColors.greenbtn,
                              )),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.add),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text("Ajouter un dossier"),
                                  ),
                                ],
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, newFolders);
                              },
                            ),
                            const Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 30, right: 10),
                                child: Material(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Rechercher un propriétaire',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: SingleChildScrollView(
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width - 10,
                              height: MediaQuery.of(context).size.height - 100,
                              child: ListView.separated(
                                padding: const EdgeInsets.all(8),
                                itemCount: state.listFolders.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return FolderLine(
                                      folder: state.listFolders[index]);
                                },
                                separatorBuilder:
                                    (context, index) =>
                                        const Divider(),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        } else {
          return const Text("");
        }
      },
    );
  }
}
