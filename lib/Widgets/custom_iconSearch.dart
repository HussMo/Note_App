import 'package:flutter/material.dart';

class CustomeIcpnButton extends StatelessWidget {
  const CustomeIcpnButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: const Icon(Icons.search),
    );
  }
}