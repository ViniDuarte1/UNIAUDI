import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uniaudi/home_page.dart';

import 'modules/autenticacao/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'UNIAUDI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        appBarTheme: const AppBarTheme(
          color: Colors.cyan,
          centerTitle: true,
          elevation: 0,
          toolbarHeight: 80,
        ),
      ),
       initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const LoginPage()),
        GetPage(name: '/home', page: () =>  HomePage()),
        
      ]
    );
  }
}


