import 'package:belopasseio/models/mediaQuery.dart';
import 'package:belopasseio/models/caixaTexto.dart';
import 'package:belopasseio/routes/rotas.dart';
import 'package:flutter/material.dart';
import 'package:belopasseio/constantes.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double altura = AlturaLargura().alturaPega(context);
    double largura = AlturaLargura().larguraPega(context);
    return Scaffold(
      body: Container(
        height: altura,
        width: largura,
        padding: EdgeInsets.only(top: largura * 0.01, bottom: altura * 0.01),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  SLOGAN,
                  height: altura * 0.4,
                ),
                SizedBox(
                  height: largura * 0.02,
                ),
                Text(
                  "Dogs & Cats",
                  style: TextStyle(
                    color: kCorNomeDaTelaIncial,
                    fontWeight: FontWeight.bold,
                    fontSize: altura * 0.06,
                  ),
                ),
                SizedBox(
                  height: largura * 0.02,
                ),
                //Caixa de Texto de login
                CaixaTexto(
                  largura: largura * 0.8,
                  altura: (largura * 0.8) - (largura * 0.68),
                  corCaixa: kCorDaCaixa,
                  nome: "Nome",
                  tamanhoFonte: largura * 0.06,
                  aparecerOuNao: false,
                ),
                SizedBox(
                  height: largura * 0.02,
                ),
                //Caixa de Texto de senha
                CaixaTexto(
                  largura: largura * 0.8,
                  altura: (largura * 0.8) - (largura * 0.68),
                  corCaixa: kCorDaCaixa,
                  nome: "Senha",
                  tamanhoFonte: largura * 0.06,
                  aparecerOuNao: true,
                ),
                SizedBox(
                  height: largura * 0.02,
                ),
                //Container com apresentação do botão para entrar com login e senha
                Container(
                  width: largura * 0.6,
                  height: (largura * 0.8) - (largura * 0.68),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.ROTA_HOME);
                    },
                    child: Text(
                      "ENTRAR",
                      style: TextStyle(
                        color: kCorNomeDaTelaIncial,
                        fontWeight: FontWeight.bold,
                        fontSize: largura * 0.07,
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
                  height: largura * 0.01,
                ),
                Text(
                  "Esqueci a senha",
                  style: TextStyle(
                    color: kCorNomeDeMenosDestaque,
                    fontWeight: FontWeight.bold,
                    fontSize: largura * 0.05,
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
