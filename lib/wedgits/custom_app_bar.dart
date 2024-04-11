import 'package:flutter/material.dart';
import 'package:notesapp_git/wedgits/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key,this.title='Notes',  this.icon=Icons.search});
  final String title ;
  final IconData icon ;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(title,style: const TextStyle(fontSize: 28),),
        const Spacer(),
        CustomSearchIcon(
          icon: icon,
        ),
      ],
    );
  }
}