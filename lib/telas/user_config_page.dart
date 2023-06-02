import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:uniaudi/components/option/listoption.dart';
import 'package:uniaudi/controller/options.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:uniaudi/telas/add_page.dart';

class ConfigPage extends StatefulWidget {
  const ConfigPage({Key? key,}) : super(key: key);

  

  @override
  State<ConfigPage> createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  @override
  Widget build(BuildContext context) {
    var optionController = Provider.of<OptionController>(context);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        elevation: 10,
        backgroundColor: const Color.fromARGB(255, 93, 190, 125),
        title: const Text('Config'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
            padding: const EdgeInsets.all(10),
            icon: const Icon(Icons.add),
            onPressed: () {
              navigator!.push(
                      MaterialPageRoute(
                        builder: (context) => AddPage(),
                      ),
                    );
              // testeController.addOption(ListOption(nome: 'teste1'));
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.8,
              child: ListView.builder(
                itemCount: optionController.options.length,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.grey[200],
                        child: ListTile(
                          title: Text(optionController.options[index].nome),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: const Icon(Icons.edit),
                                onPressed: () {
                                  // Lógica para o botão de edição
                                },
                              ),
                              IconButton(
                                icon: const Icon(Icons.delete),
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: const Text('Confirmação'),
                                        content: const Text(
                                            'Tem certeza de que deseja excluir?'),
                                        actions: [
                                          TextButton(
                                            child: const Text('Cancelar'),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                          TextButton(
                                            child: const Text('Excluir'),
                                            onPressed: () {
                                              optionController.removeOption(
                                                  optionController
                                                      .options[index]);
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ));
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

  // return do listview
 // return const Slidable(
                  //   key: ValueKey(0),
                  //   endActionPane: ActionPane(
                  //     motion: BehindMotion(),
                  //     children: [
                  //       SlidableAction(
                  //         flex: 2,
                  //         onPressed: () => onDismissed(context, index),
                  //         backgroundColor: Color(0xFF7BC043),
                  //         foregroundColor: Colors.white,
                  //         icon: Icons.edit,
                  //         label: 'Edit',
                  //       ),
                  //       SlidableAction(
                  //         onPressed: doNothing,
                  //         backgroundColor: Color(0xFF0392CF),
                  //         foregroundColor: Colors.white,
                  //         icon: Icons.delete,
                  //         label: 'Delete',
                  //       ),
                  //     ],
                  //   ),

                  //   // The child of the Slidable is what the user sees when the
                  //   // component is not dragged.
                  //   child: ListTile(title: Text('Slide me')),
                  // );

                  // Dismissible(
                  //   key: UniqueKey(),
                  //   background: Container(color: Colors.yellow[700]),
                  //   child: ListTile(
                  //     leading: Icon(Icons.person),
                  //     title: Text(testeController.options[index].nome),
                  //     iconColor: Colors.indigo,
                  //   ),
                  //   onDismissed: (direction) {
                  //     setState(() {
                  //       testeController
                  //           .removeOption(testeController.options[index]);
                  //     });
                  //   },
                  //   confirmDismiss: (DismissDirection direction) async {
                  //     final confirmed = await showDialog<bool>(
                  //       context: context,
                  //       builder: (context) {
                  //         return AlertDialog(
                  //           title:
                  //               const Text('Are you sure you want to delete?'),
                  //           actions: [
                  //             TextButton(
                  //               onPressed: () => Navigator.pop(context, false),
                  //               child: const Text('No'),
                  //             ),
                  //             TextButton(
                  //               onPressed: () => Navigator.pop(context, true),
                  //               child: const Text('Yes'),
                  //             )
                  //           ],
                  //         );
                  //       },
                  //     );
                  //     log('Deletion confirmed: $confirmed');
                  //     return confirmed;
                  //   },
                  //   secondaryBackground: Container(color: Colors.red),
                  // );