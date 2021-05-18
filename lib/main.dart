import 'package:belopasseio/constantes.dart';
import 'package:belopasseio/models/caixaTexto.dart';
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
      body: Container(
        padding: EdgeInsets.only(top: 30, bottom: 30),
        child: Column(
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
            CaixaTexto(
              largura: 305,
              altura: 68,
              corCaixa: kCorDaCaixa,
              nome: "Nome",
              tamanhoFonte: 24,
            ),
            CaixaTexto(
              largura: 305,
              altura: 68,
              corCaixa: kCorDaCaixa,
              nome: "Senha",
              tamanhoFonte: 24,
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
      ),
    );
  }
}
