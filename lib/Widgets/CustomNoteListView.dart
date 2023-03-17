import 'package:flutter/material.dart';

import 'Custom_noteApp.dart';

class CustomeNoteListView extends StatelessWidget {
  const CustomeNoteListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return const Padding(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: NoteItem(),
      );
    });
  }
}