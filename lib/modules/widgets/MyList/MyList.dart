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
  String stringASerMostradaNoSegundoWidget = '';

  @override
  Widget build(BuildContext context) {

    final List<String> nomes = ['PRESSET 1','PRESSET 2','PRESSET 3','PRESSET 4','PRESSET 5','PRESSET 6','PRESSET 7',];

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
                  width: MediaQuery.of(context).size.width * 0.7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color:const Color.fromARGB(153, 180, 177, 177),
                  ),
                  child: Text(
                    widget.texttitle,
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
    children: nomes.map((nome) => ListOption(nome: nome)).toList(),
  ),
)
          ],
        ),
      ),
    );
  }
}
