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
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      backgroundColor: Colors.white,
      fixedSize: const Size(double.maxFinite, 45),
      textStyle:
          const TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold),
    );

    final width = MediaQuery.of(context).size.width;
    log(width.toString());
    log('${width * 0.10}');
    return Material(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
            ),
            const SizedBox(
              height: 118,
            ),
            Container(
              color: Color.fromARGB(198, 1, 188, 152),
              child: SizedBox(
                width: 700,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: width * 0.10, vertical: 12),
                  child: Column(
                    children: [
                      MyInputTextLogin(
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Esqueci a senha',
                              style: TextStyle(
                                  color: Colors.white,
                                  ),
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
                            color: Color.fromARGB(198, 1, 188, 152),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
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
        prefixIcon: Icon(icon, color: Color.fromARGB(198, 1, 188, 152),),
      ),
    );
  }
}
