import 'package:flutter/material.dart';

class ListOption extends StatefulWidget {
  const ListOption({super.key, required this.nome});

  final String nome;
 

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
           
          },
          child: Text(widget.nome),
        ),
      ),
    );
  }
}
