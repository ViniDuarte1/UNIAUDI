import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uniaudi/components/option/listoption.dart';
import 'package:uniaudi/controller/options.dart';

class EditPage extends StatefulWidget {
  final ListOption option;

  const EditPage({Key? key, required this.option}) : super(key: key);

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  late TextEditingController nameController;
  int teste = 0;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController(text: widget.option.nome);
    teste = widget.option.teste;
  }

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

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
          title: const Text('Editar Configuração'),
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
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor, insira um nome';
                        }
                        return null;
                      },
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      onPrimary: Colors.white,
                      primary: const Color.fromARGB(255, 93, 190, 125),
                      elevation: 10,
                      minimumSize: const Size(200, 50),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        optionController.updateOption(
                          widget.option,
                          ListOption(nome: nameController.text, teste: teste),
                        );
                        Navigator.pop(context);
                      }
                    },
                    child: const Text('Salvar'),
                  ),
                  Slider(
                    value: teste.toDouble(),
                    min: 0,
                    max: 100,
                    divisions: 100,
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
        ),
      ),
    );
  }
}
