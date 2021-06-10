import 'package:belopasseio/constantes.dart';
import 'package:belopasseio/pages/login.dart';
//import 'package:belopasseio/pages/login.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kCorDeTelaDeFundo,
        fontFamily: FontSignikaNegativeFamily,
        accentColor: kCorBotao,
      ),
      home: Login(),
    );
  }
}
