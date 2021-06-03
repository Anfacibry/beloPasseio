import 'package:belopasseio/constantes.dart';
import 'package:belopasseio/models/meninoSofa.dart';
import 'package:belopasseio/models/rolagemListaAnimais.dart';
import 'package:belopasseio/models/rows.dart';
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
          //Padding que faz a saudação de boas vindas do usuário com a imagem ao lado
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 60, right: 20),
            child: Rows(
              centro: false,
              imagemTexto: false,
              doisTextos: true,
              textoPrincipal: "Bem vindo de volta",
              tamanhoTextoPrincipal: 15,
              corTextoPrincipal: kCorNomeDeMenosDestaque,
              textoSecundario: "Fabricio Cintra",
              tamanhoTextoSecundario: 25,
              imageProvider: imageProvider,
            ).rowTexto(),
          ),
          RolageListaAnimais(),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Rows(
              centro: false,
              imagemTexto: true,
              doisTextos: false,
              textoPrincipal: "Convite para um passeio",
              tamanhoTextoPrincipal: 20,
              textoSecundario2: "Criar",
              tamanhoTextoSecundario2: 20,
              corTextoSecundario2: kCorNomeDaTelaIncial,
            ).rowTexto(),
          ),
          MeninoSofa(),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Rows(
              centro: true,
              imagemTexto: true,
              doisTextos: true,
              textoPrincipal: "Planos",
              tamanhoTextoPrincipal: 25,
              textoSecundario: "Hoje",
              tamanhoTextoSecundario: 20,
              corTextoSecundario: kCorNomeDeMenosDestaque,
              textoSecundario2: "Add novo",
              tamanhoTextoSecundario2: 20,
            ).rowTexto(),
          ),
        ],
      ),
    );
  }
}
