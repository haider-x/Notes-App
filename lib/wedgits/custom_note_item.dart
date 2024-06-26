
import 'package:flutter/material.dart';
import 'package:notesapp_git/wedgits/edit_notes_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return const EditNotesView();
        }));
      } ,
      child: Container(
        padding: const EdgeInsets.only(top: 24,bottom: 24,left: 16),
        decoration: BoxDecoration(
          color: const Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(16)
        ), 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile( 
              title: const Text('Flutter Tips',style: TextStyle(
                color: Colors.black,fontSize: 26,
              ),),
              subtitle:  Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text('Build your career with Tharwat Samy',style: TextStyle(
                  color: Colors.black.withOpacity(.4),
                  fontSize: 18,
                ),),
              ),
              trailing: IconButton(
                onPressed: (){},
                 icon:  const Icon(Icons.delete,size: 24,color: Colors.black,)),
            ),
             Padding(
               padding: const EdgeInsets.only(right: 24),
               child: Text('May21,2022',style: TextStyle(
                fontSize: 12,
                  color: Colors.black.withOpacity(.4),
                ),),
             )
      
          ],
        ) ,
      ),
    );
  }
}