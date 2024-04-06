import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notesapp_git/view/wedgits/custom_app_bar.dart';
import 'package:notesapp_git/view/wedgits/custom_note_item.dart';
import 'package:notesapp_git/view/wedgits/notes_list_view.dart';


class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child:Column(
        children: [
          SizedBox(height: 50,),
          CustomAppBar(),
          Expanded(child: NotesListView()),

        ],
      ) ,); 
  }
}
