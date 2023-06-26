import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uniaudi/controller/config_controller.dart';

class MyInfo extends StatefulWidget {
  MyInfo({super.key, this.nomeselecionado});

  String? nomeselecionado;

  @override
  State<MyInfo> createState() => _MyInfoState();
}

class _MyInfoState extends State<MyInfo> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    final configController = Provider.of<ConfigController>(context);
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.5 * 0.25,
        width: MediaQuery.of(context).size.width * 0.6,
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
                Container(
                  height: 20,
                  decoration: const BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.black))),
                  child: const Text(
                    "CONFIGURAÇÂO ATUAL",
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 98, 217, 183),
                        ),
                        width: 100,
                        height: 50,
                        child: Center(
                          child: Text(
                            configController.configpresset,
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
