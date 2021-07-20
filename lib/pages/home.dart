import 'package:belopasseio/models/conteudoContainer.dart';
import 'package:belopasseio/models/mediaQuery.dart';
import 'package:belopasseio/models/meninoSofa.dart';
import 'package:belopasseio/models/rolagemListaAnimais.dart';
import 'package:belopasseio/models/rows.dart';
import 'package:belopasseio/routes/rotas.dart';
import 'package:flutter/material.dart';

import '../constantes.dart';

class HomePrincipal extends StatefulWidget {
  @override
  _HomePrincipalState createState() => _HomePrincipalState();
}

class _HomePrincipalState extends State<HomePrincipal> {
  ImageProvider imageProvider = AssetImage(PERFIL1);

  @override
  Widget build(BuildContext context) {
    double auturaPega = AlturaLargura().alturaPega(context);
    double larguraPega = AlturaLargura().larguraPega(context);
    void fun() {
      Navigator.pushNamed(context, AppRoutes.ROTA_PASSEIO);
    }

    return Scaffold(
      body: Container(
        height: auturaPega,
        width: larguraPega,
        child: Padding(
          padding: const EdgeInsets.only(right: 10, left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //Padding que faz a saudação de boas vindas do usuário com a imagem ao lado
              Padding(
                padding: const EdgeInsets.only(top: 30),
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
              const RolageListaAnimais(),
              Rows(
                centro: false,
                imagemTexto: true,
                doisTextos: false,
                textoPrincipal: "Convite para um passeio",
                tamanhoTextoPrincipal: 20,
                textoSecundario2: "Criar",
                tamanhoTextoSecundario2: 20,
                corTextoSecundario2: kCorNomeDaTelaIncial,
              ).rowTexto(),
              MeninoSofa(
                fun: fun,
              ),
              Rows(
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
              ConteudoContainer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Rows(
                    centro: false,
                    imagemTexto: true,
                    doisTextos: false,
                    textoPrincipal: "17:00h",
                    tamanhoTextoPrincipal: 25,
                  ).rowTexto(),
                  for (int a = 0; a < 10; a++)
                    Container(
                      height: 3,
                      width: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white30,
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
