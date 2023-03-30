import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Teste extends StatelessWidget {
  Teste({super.key});

  final ButtonStyle style = ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    backgroundColor: Colors.white,
    fixedSize: const Size(double.maxFinite, 25),
    textStyle:
        const TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold),
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            color: Colors.white,
            child: ElevatedButton(
              style: style,
              onPressed: () {},
              child: const Text(
                'teste',
                style: TextStyle(
                  color: Color.fromARGB(198, 1, 188, 152),
                ),
              ),
            ),
          ),
        ),
        
      ],
    );
  }
}
