import 'package:flutter/material.dart';

class RoutePage extends StatefulWidget {
  const RoutePage({super.key});

  @override
  State<RoutePage> createState() => _RoutePageState();
}

class _RoutePageState extends State<RoutePage> {
  @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        elevation: 10,
        backgroundColor: const Color.fromARGB(255, 93, 190, 125),
        title: const Text('Rota de automação'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: 
      //rota 1
      Column(
        children: [
          Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey[300],
            ),
            width: 70,
            height: 70,
            child: TextButton(
              onPressed: () {},
              child: const Text('URBANO',
              style: TextStyle(
                color: Colors.red,
                fontSize: 10,
              ),
            ),
          ),
    ),
    ),
    //rota 1
      Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[300],
        ),
        width: 70,
        height: 70,
        child: TextButton(
          onPressed: () {},
          child: const Text('ESCOLAR',
          style: TextStyle(
            color: Colors.red,
            fontSize: 10,
          ),
        ),
      ),
    ),
    ),
    //rota 1
      Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[300],
        ),
        width: 70,
        height: 70,
        child: TextButton(
          onPressed: () {},
          child: const Text('TRABALHO',
          style: TextStyle(
            color: Colors.red,
            fontSize: 10,
          ),
        ),
      ),
    ),
    ),
    //rota 1
      Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[300],
        ),
        width: 70,
        height: 70,
        child: TextButton(
          onPressed: () {},
          child: const Text('CASEIRO',
          style: TextStyle(
            color: Colors.red,
            fontSize: 10,
          ),
        ),
      ),
    ),
    )
        ],
      ),
    
    );
  }
}