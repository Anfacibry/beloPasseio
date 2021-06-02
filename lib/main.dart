import 'package:belopasseio/constantes.dart';
import 'package:belopasseio/models/modelosTextos.dart';
import 'package:belopasseio/models/row.dart';
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
        textTheme: TextTheme(
          bodyText2: StyleTextos().estiloTextoPrincipal(),
        ),
        accentColor: kCorBotao,
      ),
      home: HomePrincipal(),
    );
  }
}

class HomePrincipal extends StatefulWidget {
  @override
  _HomePrincipalState createState() => _HomePrincipalState();
}

class _HomePrincipalState extends State<HomePrincipal> {
  ImageProvider imageProvider = AssetImage(PERFIL1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 60, right: 20),
            child: Rows(
              escolha: true,
              doisTextos: true,
              texto1: "Bem vindo de volta",
              texto2: "Fabricio Cintra",
              imageProvider: imageProvider,
            ).rowTexto(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 60, right: 20),
            child: Rows(
              escolha: false,
              doisTextos: false,
              texto1: "Bem vindo de volta",
              imageProvider: imageProvider,
            ).rowTexto(),
          ),
        ],
      ),
    );
  }
}
