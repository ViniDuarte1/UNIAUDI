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
        toolbarHeight: 50,
        elevation: 10,
        backgroundColor: const Color.fromARGB(255, 93, 190, 125),
        title: const Text('Config'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
            padding: EdgeInsets.all(10),
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
          IconButton(
            padding: EdgeInsets.all(10),
            icon: Icon(Icons.edit),
            onPressed: () {},
          ),
          IconButton(
            padding: EdgeInsets.all(10),
            icon: Icon(Icons.delete),
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
