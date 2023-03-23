import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final loginController = TextEditingController();
    final senhaController = TextEditingController();

    final ButtonStyle style = ElevatedButton.styleFrom(
      backgroundColor: Colors.white,
      fixedSize: const Size(double.maxFinite, 45),
      textStyle:
          const TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold),
    );

    final width = MediaQuery.of(context).size.width;
    log(width.toString());
    log('${width * 0.10}');
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 150,
          ),
          Card(
            elevation: 20,
            //margin: const EdgeInsets.symmetric(horizontal: 500),
            color: Colors.blueGrey,
            child: SizedBox(
              width: 700,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.10, vertical: 12),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/brasao_branco.png',
                      width: 250,
                    ),
                    // const SizedBox(
                    //   height: 12,
                    // ),
                    MyInputTextLogin(
                      //width: 350,
                      controller: loginController,
                      hintText: 'E-mail',
                      icon: Icons.person,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MyInputTextLogin(
                      //width: 350,
                      controller: senhaController,
                      hintText: 'Senha',
                      icon: Icons.lock,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const Text(
                          'Esqueceu a senha?',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Clique Aqui',
                            style: TextStyle(
                                color: Colors.amber[800],
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    ElevatedButton(
                      style: style,
                      onPressed: () => Get.toNamed('/home'),
                      child: const Text(
                        'Entrar',
                        style: TextStyle(
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(),
                    Image.asset(
                      'assets/images/brasao_planejamento.png',
                      width: 250,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyInputTextLogin extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  //final double width;
  final IconData icon;

  const MyInputTextLogin(
      {Key? key,
      this.controller,
      //required this.width,
      this.hintText = '',
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blueGrey),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        //labelText: 'E-mail',
        //label: Text('E-mail'),
        hintText: hintText,
        labelStyle: const TextStyle(color: Colors.blueGrey),
        prefixIcon: Icon(icon),
      ),
    );
  }
}
