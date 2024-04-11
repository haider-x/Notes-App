
import 'package:flutter/material.dart';
import 'package:notesapp_git/view/constants/constants.dart';

class customBottomSheet extends StatelessWidget {
  const customBottomSheet({super.key,required this.onTap});
 final void Function()? onTap ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 45,
        decoration: BoxDecoration(
          color: KPrimaryColor,
          borderRadius: BorderRadius.circular(16)
        ),
        child: const Center(child: Text('Add',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)),
      ),
    );
  }
}