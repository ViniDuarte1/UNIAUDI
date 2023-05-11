import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uniaudi/controller/config_controller.dart';

class MyInfo extends StatefulWidget {
  MyInfo({super.key,  this.nomeselecionado});
  
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
                Container(
                  height: 20,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(153, 180, 177, 177),
                  ),
                  child: const Text(
                    "CONFIGURAÇÂO ATUAL",
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        //esse container que vai aparecer o nome
                        width: 70,
                        height: 60,
                        color: Colors.grey,
                         child: Center(
                          child: Text(configController.configpresset),
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                          print(isSwitched);
                        });
                      },
                      activeTrackColor: Colors.lightGreenAccent,
                      activeColor: Colors.green,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
