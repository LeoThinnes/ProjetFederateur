import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/Bloc/Folder_bloc.dart';
import 'package:untitled/Pages/Folders.dart';
import 'package:untitled/Pages/NewFolder.dart';
import 'package:untitled/Pages/ShowFolder.dart';
import 'Routes/route.dart';
import 'Pages/HomePage.dart';
import 'Pages/NotePage.dart';
import 'Pages/ListNotesPage.dart';



void main() {
  runApp(
      MultiBlocProvider(providers: [
        BlocProvider<FolderBloc>(create: (_) => FolderBloc())
      ], child: const MyApp())
  );
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "App conseiller",
      routes: {
        home : (context) => HomePage(),
        newFolders: (context) => NewFolder(),
        folders: (context) => Folders(),
        showFolder: (context) => ShowFolder(0),
      },
    );
  }
}


