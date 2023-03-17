

import 'package:flutter/material.dart';

import 'custom_iconSearch.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.title, required this.icon}) : super(key: key);
final String title;
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(

      children:  [
        Text(title,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            )),
        const Spacer(),

         CustomeIcpnButton(icon: icon),

      ],
    );
  }
}


