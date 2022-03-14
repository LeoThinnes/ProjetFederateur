import 'package:flutter/material.dart';
import 'package:untitled/Model/Folder.dart';

@immutable
abstract class FolderState {
  const FolderState ();
}
class FolderLoadingState extends FolderState {
  const FolderLoadingState ();
}
class FolderInitialState extends FolderState {
  const FolderInitialState () ;
}
class FolderOnSuccessState extends FolderState {
  final List<Folder> listFolders;
  final bool envValidate;
  const FolderOnSuccessState(this.listFolders,this.envValidate);
}