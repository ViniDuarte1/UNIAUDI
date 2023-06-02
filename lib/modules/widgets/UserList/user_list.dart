import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:uniaudi/controller/options.dart';
import 'package:uniaudi/database/option_dao.dart';
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
                    navigator!.push(
                      MaterialPageRoute(
                        builder: (context) => ConfigPage(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.add_circle_outline),
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
                  return ListOption(nome: optionController.options[index].nome);
                 },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
