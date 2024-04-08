
 import 'package:flutter/material.dart';
import 'package:notesapp_git/view/constants/constants.dart';
import 'package:notesapp_git/view/wedgits/custom_textfield.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 32,),
            CustomTextField(hintText: 'Title',),
            SizedBox(height: 16,),
            CustomTextField(hintText: 'Content',maxLines: 5,),
            SizedBox(height: 20,),
            customBottomSheet(),
            ],
          ),
        ),
      ),
    );
  }
}
class customBottomSheet extends StatelessWidget {
  const customBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 45,
      decoration: BoxDecoration(
        color: KPrimaryColor,
        borderRadius: BorderRadius.circular(16)
      ),
      child: const Center(child: Text('Add',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)),
    );
  }
}