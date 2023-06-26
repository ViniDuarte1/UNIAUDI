import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../controller/config_controller.dart';

class ListOption extends StatefulWidget {
  const ListOption({super.key, required this.nome, required this.teste, required this.teste2, required this.teste3, });
  final String nome;
  final int teste;
  final int teste2;
  final int teste3;

  @override
  State<ListOption> createState() => _ListOptionState();
}

class _ListOptionState extends State<ListOption> {


  @override
  Widget build(BuildContext context) {

     final configController = Provider.of<ConfigController>(context);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(255,98, 217, 183),
        ),
        width: 100,
        height: 38,
        child: TextButton(
          onPressed: () {
            configController.selectconfig(widget.nome);    
          },
          child: Text(widget.nome,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 15,
          ),
        ),
      ),
    ),
    );
  }
}
