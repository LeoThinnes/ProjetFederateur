import 'package:flutter/material.dart';

@immutable
abstract class FolderEvent{
  const FolderEvent();
}
class allFolderEvent extends FolderEvent{
  const allFolderEvent ();
}

class addFolderEvent extends FolderEvent{
  final Map<String,dynamic> content;
  const addFolderEvent (this.content);
}