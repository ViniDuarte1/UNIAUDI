import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../components/option/listoption.dart';

class MyList extends StatelessWidget {
  const MyList({super.key, required this.texttitle});

  final String texttitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.7 * 0.25,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 20,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(153, 180, 177, 177),
                  ),
                  child: Text(
                    texttitle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  ListOption(
                    nome: 'teste1',
                  ),
                  ListOption(
                    nome: 'teste2',
                  ),
                  ListOption(
                    nome: 'teste3',
                  ),
                  ListOption(
                    nome: 'teste4',
                  ),
                  ListOption(
                    nome: 'teste5',
                  ),
                  ListOption(
                    nome: 'teste6',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
