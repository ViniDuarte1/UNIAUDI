import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:uniaudi/controller/config_controller.dart';
import 'package:uniaudi/controller/options.dart';
import 'package:uniaudi/telas/home_page.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => ConfigController()),
      ChangeNotifierProvider(create: (_) => OptionController(options: [])),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

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
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomePage(),
      },
    );
  }
}
