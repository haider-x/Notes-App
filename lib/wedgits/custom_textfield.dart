// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:notesapp_git/constants/constants.dart';


class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, 
  required this.hintText,
    this.maxLines=1, this.onSaved});


  final String hintText ;
  final int maxLines;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      validator: (value){
        if(value?.isEmpty ?? true){
          return'Field is requires';
        }else{
          return null ; 
        }
      },
      onSaved: onSaved,
      maxLines: maxLines,
      cursorColor: KPrimaryColor,
      decoration: InputDecoration(
        hintText: hintText,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(KPrimaryColor),
      
      ),
    );
  }


  OutlineInputBorder buildBorder([Color]) {
    return OutlineInputBorder(
        
        borderRadius: BorderRadius.circular(16),
        borderSide:  BorderSide(
          color: Color ?? Colors.white ,
        ),
      );
  }
}