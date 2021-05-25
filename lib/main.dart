import 'package:belopasseio/constantes.dart';
import 'package:belopasseio/models/dogsCats.dart';
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
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 60, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Bem vindo de volta",
                      style: TextStyle(
                        color: kCorNomeDeMenosDestaque,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      "Fabricio Cintra",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                CircleAvatar(
                  backgroundImage: imageProvider,
                  maxRadius: 30,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...ANIMAIS.map((e) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DogsCats(
                      FUNDO,
                      e["imagem"]!,
                      e["status"]!,
                      e["nome"]!,
                      alturaPrincipal: 200,
                      larguraPrincipal: 150,
                      alturaSecundaria: 100,
                      larguraSecundaria: 150,
                      corBotao: kCorBotao,
                    ),
                  );
                }).toList(),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Convidar para um passeio",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "Criar",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
