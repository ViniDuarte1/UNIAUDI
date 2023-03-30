import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import 'modules/widgets/teste/teste.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

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
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                ),
                Stack(children: [
                  Container(
                    height: 500,
                    color: Color.fromARGB(198, 1, 188, 152),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          ElevatedButton(
                            style: style,
                            onPressed: () {},
                            child: const Text(
                              'teste',
                              style: TextStyle(
                                color: Color.fromARGB(198, 1, 188, 152),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
              ]),
        ),
      ),
    );
  }
}
