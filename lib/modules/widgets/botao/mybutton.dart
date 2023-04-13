import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyButton extends StatelessWidget {
  const MyButton(
      {super.key,
      required this.onPressed,
      required this.text,
      required this.imagePath});
  final VoidCallback onPressed;
  final String text;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 50,
          width: 50,
          color: Colors.amber,
        ));
  }
}
