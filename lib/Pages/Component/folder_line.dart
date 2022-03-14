import 'package:flutter/material.dart';
import 'package:untitled/Model/Folder.dart';
import 'package:untitled/Pages/ShowFolder.dart';
import 'package:untitled/Routes/route.dart';

class FolderLine extends StatelessWidget {
  final Folder folder;

  const FolderLine({
    Key? key,
    required this.folder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SizedBox(
        height: 50,
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.folder,
              size: 40,
            ),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 10),
                  child: Text(
                      "Dossier - ${folder.first_name} ${folder.last_name}",
                      style: const TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontSize: 14)),
                )),
            const Padding(
              padding: EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Icon(Icons.delete,
                  color: Colors.red),
            ),
            Material(child: IconButton(onPressed: () => {
              Navigator.push(
            context,
            MaterialPageRoute(
            builder: (context) => ShowFolder(folder.id), ), )
            }, icon: Icon(Icons.arrow_forward)))
          ],
        ),
      ),
    );
  }
}
