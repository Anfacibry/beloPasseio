import 'package:belopasseio/constantes.dart';
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
                      Container(
                        height: largura * 0.1,
                        width: largura * 0.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: kCorBotao.withOpacity(0.9),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(CAMERA),
                            Text(
                              "Video ao vivo",
                              style: TextStyle(
                                fontSize: 17,
                                color: kCorDaCaixa,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
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
                      ),
                      Positioned(
                        top: altura * 0.2,
                        child: Container(
                          height: altura * 0.4,
                          width: largura,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
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
