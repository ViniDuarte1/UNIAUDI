import 'package:flutter/material.dart';
import '../../../components/option/listoption.dart';

class MyList extends StatefulWidget {
  const MyList({
    Key? key,
    required this.texttitle,
  }) : super(key: key);

  final String texttitle;

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  @override
  Widget build(BuildContext context) {
    final List<ListOption> options = [
      ListOption(nome: 'teste', teste:  3),
      ListOption(nome: 'teste2', teste: 4 ),
      ListOption(nome: 'teste3', teste:  4),
      ListOption(nome: 'teste4', teste:  4),
      ];

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
            Container(
              height: 20,
              width: MediaQuery.of(context).size.width * 0.7,
              decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.black
                      )
                    )
                  ),
              child: Text(
                widget.texttitle,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: options,
              ),
            )
          ],
        ),
      ),
    );
  }
}
