import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp_git/constants/constants.dart';
import 'package:notesapp_git/view/notes_view.dart';

void main() async{
  await Hive.initFlutter(); 
  await Hive.openBox(kNoteBox);
  runApp(const NoteApp());
}
class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark,
      ),
      home: const NotesView(),

    );
  }
}



// part of 'add_note_cubit.dart';

// @immutable
// sealed class AddNoteState {}

// final class AddNoteInitial extends AddNoteState {}
// class AddNoteLoading extends AddNoteState{}
// class AddNoteSucess extends AddNoteState{}
// class AddNoteFailure extends AddNoteState{
//   final String errMessage ;

//   AddNoteFailure({required this.errMessage});
// }



// import 'package:bloc/bloc.dart';
// import 'package:meta/meta.dart';

// part 'add_note_state.dart';

// class AddNoteCubit extends Cubit<AddNoteState> {
//   AddNoteCubit() : super(AddNoteInitial());
// }

