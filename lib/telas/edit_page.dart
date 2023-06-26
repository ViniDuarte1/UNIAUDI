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
  int teste = 16;
  int teste2 = 500;
  int teste3 = 4000;
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
              
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.equalizer_rounded,
                        size: 50,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: nameController,
                    textAlign: TextAlign.start,
                   validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor, preencha o campo';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: 'Nome',
                      fillColor: Color.fromARGB(0, 255, 255, 255),
                      filled: true,
                    ),
                  ),
                ),
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Grave   Hz: "+teste.toString()),
                        Slider(
                          value: teste.toDouble(),
                          min: 16,
                          max: 500,
                          divisions: 484,
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
                 Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Médio   Hz: "+teste2.toString()),
                        Slider(
                          value: teste2.toDouble(),
                          min: 500,
                          max: 4000,
                          divisions: 3500,
                          onChanged: (newTeste2) {
                            setState(() {
                              teste2 = newTeste2.round();
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Agudo   Hz: "+teste3.toString()),
                        Slider(
                          value: teste3.toDouble(),
                          min: 4000,
                          max: 20000,
                          divisions: 16000,
                          onChanged: (newTeste3) {
                            setState(() {
                              teste3 = newTeste3.round();
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
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
                          ListOption(
                        nome: nameController.text,
                        teste: teste,
                        teste2: teste2,
                        teste3: teste3,
                      ),
                        );
                        Navigator.pop(context);
                      }
                    },
                    child: const Text('Salvar'),
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
