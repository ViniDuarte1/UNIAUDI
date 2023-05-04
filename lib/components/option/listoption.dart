import 'package:flutter/material.dart';
import 'package:uniaudi/modules/widgets/MyInfo/info.dart';

class ListOption extends StatefulWidget {
  const ListOption({super.key, required this.nome, required this.callback});
  final String nome;
  final Function callback;

 

  @override
  State<ListOption> createState() => _ListOptionState();
}

class _ListOptionState extends State<ListOption> {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 70,
        height: 70,
        color: Colors.grey,
        child: TextButton(
          onPressed: () {
            widget.callback(widget.nome); // Chamada do callback.
          },
          child: Text(widget.nome),
        ),
      ),
    );
  }
}
