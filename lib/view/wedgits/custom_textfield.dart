// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:notesapp_git/view/constants/constants.dart';


class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, 
  required this.hintText,
    this.maxLines=1});
  final String hintText ;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return  TextField(
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