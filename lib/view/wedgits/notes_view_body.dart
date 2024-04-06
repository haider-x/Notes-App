import 'package:flutter/material.dart';
import 'package:notesapp_git/view/wedgits/custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child:Column(
        children: [
          SizedBox(height: 50,),
          CustomAppBar(),
          NoteItem(),

        ],
      ) ,); 
  }
}
class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffFFCCBB),
        borderRadius: BorderRadius.circular(16)
      ), 
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile( 
            title: const Text('Flutter Tips',style: TextStyle(
              color: Colors.black,fontSize: 26,
            ),),
            subtitle:  Text('Build your career with Tharwat Samy',style: TextStyle(
              color: Colors.black.withOpacity(.4),
              ,fontSize: 20,
            ),),
            trailing: IconButton(
              onPressed: (){},
               icon: const Icon(Icons.delete,color: Colors.black,)),
          ),
          const Text('May21 , 2022',style: TextStyle(
              color: Colors.black,
            ),)

        ],
      ) ,
    );
  }
}