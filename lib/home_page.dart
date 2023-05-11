import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uniaudi/controller/config_controller.dart';
import 'package:uniaudi/modules/widgets/MyList/MyList.dart';
import 'modules/widgets/MyInfo/info.dart';
import 'modules/widgets/rota/rota.dart';
import 'modules/widgets/transcricao/transcricao.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ButtonStyle style = ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    backgroundColor: Colors.white,
    fixedSize: const Size(double.maxFinite, 25),
    textStyle:
        const TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold),

        
  );
  

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      body: Column(
        children: [
          Container(
              height: MediaQuery.of(context).size.height * 0.20,
              width: MediaQuery.of(context).size.width,
              color: Color.fromARGB(255, 93, 190, 125),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'UNIAUDI',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Column(
                          children: const [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'APARELHO NÃO CONECTADO',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Roboto',
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              )),
          Container(
            height: MediaQuery.of(context).size.height * 0.80,
            width: MediaQuery.of(context).size.width,
            color: Color.fromARGB(179, 209, 207, 207),
            child: Column(
              children: [
                MyInfo(),
                MyList(
                  texttitle: 'PRESSETS',
                ),
                MyList(
                  texttitle: 'CONFIGURAÇÕES DO USUARIO',
                ),
                //TESTE DE BOTAO
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Transcricao(),
                    Rota(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
