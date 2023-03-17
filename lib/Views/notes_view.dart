import 'package:flutter/material.dart';
import 'package:note_app/Widgets/AddBottomNoteSheet.dart';
import 'package:note_app/Widgets/CustomNoteListView.dart';
import '../Widgets/custom_appBar.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow.shade200,
        onPressed: () {

          showModalBottomSheet(
            shape: const RoundedRectangleBorder( borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))),
              context: context,
              builder: (context) {
                return const AddBotoomNoteSheet();
              });
        },
        child: const Icon(Icons.add, color: Colors.black),
      ),

    body: Padding(
      padding:  const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [

          SizedBox(
            height: 40,
          ),
          CustomAppBar(title: 'Notes', icon: Icons.search),
          Expanded(child: CustomeNoteListView())
        ]
      ),
    )
    );
  }
}







