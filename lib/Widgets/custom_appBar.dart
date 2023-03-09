

import 'package:flutter/material.dart';

import 'custom_iconSearch.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(

      children: const [
        Text('Notes',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            )),
        Spacer(),

         CustomeIcpnButton(),

      ],
    );
  }
}


