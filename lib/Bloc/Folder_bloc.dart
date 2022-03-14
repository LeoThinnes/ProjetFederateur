import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/Bloc/Folder_event.dart';
import 'package:untitled/Bloc/Folder_repository.dart';
import 'package:untitled/Bloc/Folder_state.dart';

class FolderBloc extends Bloc<FolderEvent , FolderState> {
  FolderBloc() : super(const FolderInitialState ()) {

    on<allFolderEvent>((event , emit) async {
      emit ( FolderLoadingState());
      var list = await AllFolderRepository ().allFolder();
      var envValidate = false;
      emit ( FolderOnSuccessState(list,envValidate));
    });

    on<addFolderEvent>((event , emit) async {
      emit ( FolderLoadingState());
      var envValidate = await AddFolderRepository ().AddFolder(event. content);
      var list = await AllFolderRepository ().allFolder();
      emit ( FolderOnSuccessState(list,envValidate));
    });

  }
}