import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uniaudi/components/option/listoption.dart';
import 'package:uniaudi/controller/options.dart';

class AddPage extends StatefulWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  final _formKey = GlobalKey<FormState>();
  int teste = 0;
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final optionController = Provider.of<OptionController>(context);

    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 50,
          elevation: 10,
          backgroundColor: const Color.fromARGB(255, 93, 190, 125),
          title: const Text('Nova Configuração'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              height: 650,
              width: 375,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 3),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: nameController,
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Nome',
                        fillColor: Colors.white70,
                        filled: true,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: const Color.fromARGB(255, 93, 190, 125),
                      elevation: 10,
                      minimumSize: const Size(200, 50),
                    ),
                    onPressed: () {
                      optionController.addOption(
                        ListOption(
                          nome: nameController.text,
                          teste: teste,
                        ),
                      );
                      Navigator.pop(context);
                    },
                    child: const Text('Adicionar!'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Hz: "+teste.toString()),
                          Slider(
                            value: teste.toDouble(),
                            min: 0,
                            max: 600,
                            divisions: 600,
                            onChanged: (newTeste) {
                              setState(() {
                                teste = newTeste.round();
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
