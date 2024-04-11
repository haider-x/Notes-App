import 'package:flutter/material.dart';
import 'package:notesapp_git/wedgits/add_note_bottom_sheet.dart';
import 'package:notesapp_git/wedgits/notes_view_body.dart';

class NotesView extends StatefulWidget {
  const NotesView({super.key});

  @override
  State<NotesView> createState() => _NotesViewState();
}

class _NotesViewState extends State<NotesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
      showModalBottomSheet(context: context, builder: (context){
        return const AddNoteBottomSheet();
      },);
         
        },
        child: const Icon(Icons.add),),
      body: const NotesViewBody(),

    );
  }
}

