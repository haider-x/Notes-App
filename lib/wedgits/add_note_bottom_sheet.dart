import 'package:flutter/material.dart';
import 'package:notesapp_git/wedgits/custom_bottom_sheet.dart';
import 'package:notesapp_git/wedgits/custom_textfield.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: AdddNoteForm(),
      ),
    );
  }
}









class AdddNoteForm extends StatefulWidget {
  const AdddNoteForm({
    super.key,
  });
  @override
  State<AdddNoteForm> createState() => _AdddNoteFormState();
}

class _AdddNoteFormState extends State<AdddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autoValidateMode,
      key: formKey,
      child:  Column(
        children: [
           const SizedBox(
            height: 32,
          ),
          CustomTextField(
            onSaved: (value) {
                title =value;
            } ,
            
            hintText: 'Title',
          ),
           const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved: (value) {
                subTitle =value;
            } ,
            hintText: 'Content',
            maxLines: 5,
          ),
           const SizedBox(
            height: 20,
          ),
           customBottomSheet(
            onTap: () { 
              if (formKey.currentState!.validate()) {  
                formKey.currentState!.save();
                
              }else{
                autoValidateMode=AutovalidateMode.always;
                setState(() {
                  
                });
              }

  }),
        ],
      ),
    );
  }
}
