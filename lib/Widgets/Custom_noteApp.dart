import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24, bottom: 24),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.yellow.withOpacity(0.5),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,

       children: const [
         ListTile(

            title: Text('Note Title',style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 20),),
            subtitle: Text('Note Subtitle',style: TextStyle(color: Colors.black),),
            trailing: Icon(Icons.delete, color: Colors.black,size: 40,),
         ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Text('15 March, 2023',style: TextStyle(color: Colors.black),),
          ),
       ],
      )
    );
  }
}