import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../../controller/config_controller.dart';
import '../../telas/user_config.dart';

class ListOption extends StatefulWidget {
  const ListOption({super.key, required this.nome});
  final String nome;

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
        width: 70,
        height: 70,
        color: Colors.grey,
        child: TextButton(
          onPressed: () {
            configController.selectconfig(widget.nome);
            navigator!.push(
              MaterialPageRoute(
                builder: (context) => const ConfigPage(),
              ),
            ); 
          },
          child: Text(widget.nome,
          style: const TextStyle(
            color: Colors.red,
            fontSize: 10,
          ),
        ),
      ),
    ),
    );
  }
}
