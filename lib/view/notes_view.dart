import 'package:flutter/material.dart';
import 'package:notesapp_git/view/wedgits/custom_textfield.dart';
import 'package:notesapp_git/view/wedgits/notes_view_body.dart';

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


 class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 32,),
        CustomTextField(hintText: 'Title',),
        SizedBox(height: 16,),
        CustomTextField(hintText: 'Content',maxLines: 5,),
        ],
      ),
    );
  }
}