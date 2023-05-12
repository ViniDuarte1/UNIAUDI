import 'package:flutter/material.dart';
import 'home_page.dart';

class ConfigPage extends StatefulWidget {
  const ConfigPage({Key? key}) : super(key: key);

  @override
  State<ConfigPage> createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Config'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          ElevatedButton(
            child: const Text('Add'),
            onPressed: () {},
          ),
          ElevatedButton(
            child: const Text('Al'),
            onPressed: () {},
          ),
          ElevatedButton(
            child: const Text('Ex'),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Configurações',
            ),
          ],
        ),
      ),
    );
  }
}
