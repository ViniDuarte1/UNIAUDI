import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uniaudi/controller/config_controller.dart';
import '../../../components/option/listoption.dart';


class MyList extends StatefulWidget {
  MyList({Key? key, required this.texttitle,}) : super(key: key);

  final String texttitle;

  

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  String stringASerMostradaNoSegundoWidget = '';


  @override
  Widget build(BuildContext context) {

    final configController = Provider.of<ConfigController>(context);

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
                children: const [
                   ListOption(
                    nome: 'teste2',
                    // callback: (String nome) {
                    //   setState(() {
                    //     //stringASerMostradaNoSegundoWidget = nome;
                    //     //configController.selectconfig(nome);
                    //   });
                    // },
                  ),
                   ListOption(
                    nome: 'teste1',
                    // callback: (String nome) {
                    //   setState(() {
                    //    // stringASerMostradaNoSegundoWidget = nome;
                    //    //configController.selectconfig(nome);        
                    //   },
                    //   );
                    // },
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
