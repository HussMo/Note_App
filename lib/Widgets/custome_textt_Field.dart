

import 'package:flutter/material.dart';

class CustomeTextField extends StatelessWidget {
  const CustomeTextField({Key? key, required this.hint,  required this.maxLines, this.onSaved}) : super(key: key);
final String hint;
  final int maxLines;

  final Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value!.isEmpty ?? true) {
          return "Please Enter Some Text";
        } else {
          return null;
        }
      },
      maxLines: maxLines,
      decoration: InputDecoration(

        hintText: hint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.white),
        ),
      ),

    );
  }
}
