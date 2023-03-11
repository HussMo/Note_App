
import 'package:flutter/material.dart';
import 'package:note_app/Widgets/custome_textt_Field.dart';

class AddBotoomNoteSheet extends StatelessWidget {
  const AddBotoomNoteSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Column(
        children:  [
          const CustomeTextField(hint:"Title", maxLines: 1),
          const SizedBox(
            height: 20,
          ),
          const CustomeTextField( hint:"Note", maxLines: 5),
        ],

      ),
    );
  }
}
