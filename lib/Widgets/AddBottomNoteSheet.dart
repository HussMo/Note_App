
import 'package:flutter/material.dart';
import 'package:note_app/Widgets/custome_Button.dart';
import 'package:note_app/Widgets/custome_textt_Field.dart';

class AddBotoomNoteSheet extends StatefulWidget {
   const AddBotoomNoteSheet({Key? key}) : super(key: key);

  @override
  State<AddBotoomNoteSheet> createState() => _AddBotoomNoteSheetState();


}

class _AddBotoomNoteSheetState extends State<AddBotoomNoteSheet> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? title,subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children:   [
              CustomeTextField(
                  hint:"Title", maxLines: 1,

                onSaved: (value) {
                   title = value!;
                },

              ),
              const SizedBox(
                height: 20,
              ),
              CustomeTextField( hint:"Note", maxLines: 5,
                onSaved: (value) {
                   subTitle = value!;
                },
              ),
              const SizedBox(
                height: 20,
              ),
    CustomeButton(
      onTap: () {
        if (_formKey.currentState!.validate()) {
          _formKey.currentState!.save();

        }
        }

    ),

            ],

          ),
        ),
      ),
    );
  }
}
