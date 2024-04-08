import 'package:flutter/material.dart';
import 'package:notesapp_git/view/wedgits/custom_app_bar.dart';
import 'package:notesapp_git/view/wedgits/custom_textfield.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            icon: Icons.check,
            title: 'Edit Notes',
          ),
          SizedBox(height: 50,),
          CustomTextField(hintText: 'Title'),
          SizedBox(height: 16,),
          CustomTextField(hintText: 'Content'),
        ],
      ),
    );
  }
}
