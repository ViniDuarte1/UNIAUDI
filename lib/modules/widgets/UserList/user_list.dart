import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:uniaudi/controller/options.dart';
import 'package:uniaudi/telas/user_config_page.dart';
import '../../../components/option/listoption.dart';

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
    final optionController = Provider.of<OptionController>(context);
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      height: 20,
                      width: MediaQuery.of(context).size.width * 0.7,
                      decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.black
                      )
                    )
                  ),
                      child: Text(
                        widget.texttitle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {
                    navigator!.push(
                      MaterialPageRoute(
                        builder: (context) => const ConfigPage(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.add_circle_outline,
                    size: 30,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 80,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: optionController.options.length,
                itemBuilder: (context, index) {
                  return ListOption(
                    nome: optionController.options[index].nome,
                    teste: optionController.options[index].teste,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
