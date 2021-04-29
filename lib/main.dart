import 'package:belopasseio/constantes.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: kCorDeTelaDeFundo,
      ),
      home: Login(),
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            SLOGAN,
          ),
          Text(
            "Dogs & Cats",
            style: TextStyle(
              color: kCorNomeDaTelaIncial,
              fontWeight: FontWeight.bold,
              fontSize: 36,
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 12, top: 20, bottom: 20),
            width: 305,
            height: 68,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: kCorDaCaixa,
            ),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Nome",
                labelStyle: TextStyle(
                  fontSize: 24,
                ),
                enabledBorder: InputBorder.none,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 12, top: 20, bottom: 20),
            width: 305,
            height: 68,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: kCorDaCaixa,
            ),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(
                  fontSize: 24,
                ),
                enabledBorder: InputBorder.none,
              ),
            ),
          ),
          Container(
            width: 283,
            height: 59,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "ENTRAR",
                style: TextStyle(
                  color: kCorNomeDaTelaIncial,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all(kCorBotao),
              ),
            ),
          ),
          Text(
            "Esqueci a senha",
            style: TextStyle(
              color: kCorNomeDeMenosDestaque,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
