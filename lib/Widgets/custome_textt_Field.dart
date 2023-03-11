

import 'package:flutter/material.dart';

class CustomeTextField extends StatelessWidget {
  const CustomeTextField({Key? key, required this.hint,  required this.maxLines}) : super(key: key);
final String hint;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
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
