import 'package:belopasseio/constantes.dart';
import 'package:belopasseio/models/botaoFoto.dart';
import 'package:belopasseio/models/colunaTextos.dart';
import 'package:belopasseio/models/mediaQuery.dart';
import 'package:belopasseio/routes/rotas.dart';
import 'package:flutter/material.dart';

class PageDetalhePasseio extends StatelessWidget {
  const PageDetalhePasseio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double altura = AlturaLargura().alturaPega(context);
    double largura = AlturaLargura().larguraPega(context);
    return Scaffold(
      body: Container(
        height: altura,
        width: largura,
        child: Padding(
          padding: EdgeInsets.only(top: altura * 0.07),
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(SLOGAN),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: largura * 0.2),
                        child: IconButton(
                          icon: Image.asset(VOLTAR),
                          onPressed: () {
                            Navigator.popAndPushNamed(
                                context, AppRoutes.ROTA_HOME);
                          },
                        ),
                      ),
                      BotaoFoto(
                        largura: largura,
                        alturaMultiplicada: 0.1,
                      ),
                    ],
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                          ),
                          color: kCorDaCaixa,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 20,
                                top: 10,
                                left: 20,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ColunaTextos(
                                    centro: true,
                                    textoPrincipal: "Bob",
                                    textoSecundario: "2 anos de idade",
                                    tamanhoTextoPrincipal: 24,
                                    corTextoPrincipal: Colors.black,
                                    corTextoSecundario: Colors.black38,
                                    tamanhoTextoSecundario: 20,
                                    icone: Container(),
                                  ),
                                  BotaoFoto(
                                    largura: largura,
                                    alturaMultiplicada: 0.13,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                right: 20,
                                top: 10,
                                left: 20,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  ColunaTextos(
                                    centro: true,
                                    textoPrincipal: "Sexo",
                                    textoSecundario: "Masculino",
                                    tamanhoTextoPrincipal: 15,
                                    corTextoPrincipal: Colors.black45,
                                    corTextoSecundario: Colors.black,
                                    tamanhoTextoSecundario: 20,
                                    icone: IconButton(
                                      icon: Image.asset(SEXO),
                                      onPressed: () {},
                                    ),
                                  ),
                                  ColunaTextos(
                                    centro: true,
                                    textoPrincipal: "Cor",
                                    textoSecundario: "Azul",
                                    tamanhoTextoPrincipal: 15,
                                    corTextoPrincipal: Colors.black45,
                                    corTextoSecundario: Colors.black,
                                    tamanhoTextoSecundario: 20,
                                    icone: IconButton(
                                      icon: Image.asset(PINTURA),
                                      onPressed: () {},
                                    ),
                                  ),
                                  ColunaTextos(
                                    centro: true,
                                    textoPrincipal: "Recorde",
                                    textoSecundario: "105",
                                    tamanhoTextoPrincipal: 15,
                                    corTextoPrincipal: Colors.black45,
                                    corTextoSecundario: Colors.black,
                                    tamanhoTextoSecundario: 20,
                                    icone: IconButton(
                                      icon: Image.asset(MEDALHA),
                                      onPressed: () {},
                                    ),
                                  ),
                                  ColunaTextos(
                                    centro: true,
                                    textoPrincipal: "Peso",
                                    textoSecundario: "8kg",
                                    tamanhoTextoPrincipal: 15,
                                    corTextoPrincipal: Colors.black45,
                                    corTextoSecundario: Colors.black,
                                    tamanhoTextoSecundario: 20,
                                    icone: IconButton(
                                      icon: Image.asset(BALANCA),
                                      onPressed: () {},
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: altura * 0.22,
                        child: Container(
                          height: altura * 0.4,
                          width: largura,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(60),
                            ),
                            color: kCorAzulForte,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
