import 'package:flutter/material.dart';

class CustomeButton extends StatelessWidget {
   CustomeButton({Key? key, this.onTap}) : super(key: key);

 final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width:  MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: const Center(
          child: Text(
            "Add",
            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),
          ),
        ),
      ),
    );
  }
}
