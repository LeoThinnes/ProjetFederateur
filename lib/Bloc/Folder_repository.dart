import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:untitled/Model/Folder.dart';

class AllFolderRepository {
  static final AllFolderRepository _instance = AllFolderRepository ._internal();
  AllFolderRepository ._internal();
  factory AllFolderRepository () => _instance;

  Future<List<Folder>> allFolder() async {
    /*Response response = await http.get(Uri.parse('https://eq1-server-api-dev.cleverapps.io/api/v1/folders'));

    if (response.statusCode == 200) {
      print("ca passe");
      return List.from(jsonDecode(response.body)).map((e) => Folder.fromJson(e)).toList();
    } else {
     return [];
    }*/

    await Future.delayed(const Duration(seconds: 1));
    final response = await rootBundle.loadString("assets/mock_folders.json");
    return List.from(jsonDecode(response)).map((e) => Folder.fromJson(e)).toList();
  }
}

class AddFolderRepository {
  static final AddFolderRepository _instance = AddFolderRepository ._internal();
  AddFolderRepository ._internal();
  factory AddFolderRepository () => _instance;

  Future<bool> AddFolder(Map<String,dynamic> list) async {
    Response response = await http.post(
      Uri.parse('https://eq1-server-api-dev.cleverapps.io/api/v1/folders'),
      headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
      body: jsonEncode(list),);
    if (response.statusCode == 201) {
      return true;
    } else {
      return false;
    }
  }
}