import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return //TESTE DE BOTAO TBM
        Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.7 * 0.2,
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
                  child: Text(
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
                        width: 70,
                        height: 50,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text('aqui vai ficar '),
                    Text('o botao pra ativar '),
                    Text('automatização'),
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
