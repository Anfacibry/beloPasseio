import 'package:belopasseio/constantes.dart';
import 'package:belopasseio/models/botaoFoto.dart';
import 'package:belopasseio/models/colunaTextos.dart';
import 'package:belopasseio/models/mediaQuery.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
          padding: EdgeInsets.only(top: altura * 0.04),
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Center(
                      child: Image.asset(
                        SLOGAN,
                        height: altura * 0.5,
                        width: altura * 0.5,
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: largura * 0.2),
                          child: IconButton(
                            icon: Image.asset(VOLTAR),
                            onPressed: () {
                              Navigator.pop(context);
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
              ),
              Expanded(
                flex: 2,
                child: LayoutBuilder(
                  //LayoutBuilder faz com que conseguimos atravez do
                  //constraints, pegar o tamanho do widget que está envolvendo
                  builder: (ctx, constraints) {
                    return Container(
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
                                        tamanhoTextoPrincipal:
                                            constraints.maxHeight * 0.06,
                                        corTextoPrincipal: Colors.black,
                                        corTextoSecundario: Colors.black38,
                                        tamanhoTextoSecundario:
                                            constraints.maxHeight * 0.05,
                                        icone: Container(),
                                      ),
                                      BotaoFoto(
                                        largura: constraints.maxWidth * 1,
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
                            top: constraints.maxHeight * 0.41,
                            child: Container(
                              height: constraints.maxHeight * 0.8,
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
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
