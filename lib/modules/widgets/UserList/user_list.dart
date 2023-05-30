import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uniaudi/components/option.dart';
import 'package:uniaudi/database/option_dao.dart';
import '../../../components/option/listoption.dart';
import '../../../telas/user_config_page.dart';

class UserList extends StatefulWidget {
  final String texttitle;

  const UserList({
    Key? key,
    required this.texttitle,
  }) : super(key: key);

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  @override
  Widget build(BuildContext context) {
    final List<String> nomes = [
      'USER 1',
      'USER 2',
      'USER 3',
      'USER 4',
      'USER 5',
      'USER 6',
      'USER 7'
    ];

    // void adicionarOpcao() {
    //   setState(() {
    //     nomes.add('Nova Opção1');
    //   });
    // }

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.7 * 0.25,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 20,
                      width: MediaQuery.of(context).size.width * 0.7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(153, 180, 177, 177),
                      ),
                      child: Text(
                        widget.texttitle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  alignment: const Alignment(0, 100),
                  onPressed: () {
                    OptionDao().Save(ListOption(nome: 'teste'));
                    // navigator!.push(
                    //   MaterialPageRoute(
                    //     builder: (context) => const ConfigPage(),
                    //   ),
                    // );
                  },
                  icon: const Icon(Icons.add_circle_outline),
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 80,
              child: FutureBuilder<List<ListOption>>(
                  future: OptionDao().findAll(),
                  builder: (context, snapshot) {
                    List<ListOption>? options = snapshot.data;
                    switch (snapshot.connectionState) {
                      case ConnectionState.none:
                        return const Center(child: Text('Erro de conexão'));
                      case ConnectionState.waiting:
                        return const Center(child: CircularProgressIndicator());
                      case ConnectionState.active:
                        return const Center(child: CircularProgressIndicator());
                      case ConnectionState.done:
                        if (snapshot.hasData && options != null) {
                          if (options.isNotEmpty) {
                            return ListView.builder(
                              itemCount: options.length,
                              itemBuilder: (context, index) {
                                final ListOption option = options[index];
                                return option;
                              },
                            );
                          }
                          return const Center(
                            child: Text('Nenhuma opção cadastrada'),
                          );
                        }
                        return Text('Erro ao carregar tarefas');
                    }
                    return const Text('Erro desconhecido');
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
