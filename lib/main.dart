import 'package:belopasseio/constantes.dart';
import 'package:belopasseio/models/caixaTexto.dart';
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
      home: Login(),
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double altura = alturaPega(context);
    double largura = larguraPega(context);
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.only(top: altura * 0.04, bottom: altura * 0.01),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  SLOGAN,
                ),
                SizedBox(
                  height: altura * 0.04,
                ),
                Text(
                  "Dogs & Cats",
                  style: TextStyle(
                    color: kCorNomeDaTelaIncial,
                    fontWeight: FontWeight.bold,
                    fontSize: largura * 0.12,
                  ),
                ),
                SizedBox(
                  height: altura * 0.04,
                ),
                //Caixa de Texto de login
                CaixaTexto(
                  largura: largura * 0.8,
                  altura: (largura * 0.8) - (largura * 0.65),
                  corCaixa: kCorDaCaixa,
                  nome: "Nome",
                  tamanhoFonte: largura * 0.09,
                  aparecerOuNao: false,
                ),
                SizedBox(
                  height: altura * 0.02,
                ),
                //Caixa de Texto de senha
                CaixaTexto(
                  largura: largura * 0.8,
                  altura: (largura * 0.8) - (largura * 0.65),
                  corCaixa: kCorDaCaixa,
                  nome: "Senha",
                  tamanhoFonte: largura * 0.09,
                  aparecerOuNao: true,
                ),
                SizedBox(
                  height: altura * 0.02,
                ),
                //Container com apresentação do botão para entrar com login e senha
                Container(
                  width: largura * 0.6,
                  height: (largura * 0.8) - (largura * 0.65),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "ENTRAR",
                      style: TextStyle(
                        color: kCorNomeDaTelaIncial,
                        fontWeight: FontWeight.bold,
                        fontSize: largura * 0.08,
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
                SizedBox(
                  height: altura * 0.01,
                ),
                //Botão de redefinir a senha
                Text(
                  "Esqueci a senha",
                  style: TextStyle(
                    color: kCorNomeDeMenosDestaque,
                    fontWeight: FontWeight.bold,
                    fontSize: largura * 0.06,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
