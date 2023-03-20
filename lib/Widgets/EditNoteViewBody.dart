import 'package:flutter/material.dart';
import 'package:note_app/Widgets/custom_appBar.dart';
import 'package:note_app/Widgets/custome_textt_Field.dart';
import 'custome_Button.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children:[
         SizedBox( height: 50),

          CustomAppBar(title: 'Edit the note', icon: Icons.check),
          SizedBox( height: 50),

          CustomeTextField(hint: 'Title', maxLines: 1),
          SizedBox( height: 20),
          CustomeTextField(hint: 'Note', maxLines: 5),
          SizedBox( height: 20),
          CustomeButton(onTap: () {}),

        ]
      ),
    );
  }
}
