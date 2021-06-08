import 'package:belopasseio/models/rows.dart';
import 'package:flutter/material.dart';

import '../constantes.dart';
import 'colunaTextos.dart';

class ConteudoContainer extends StatelessWidget {
  const ConteudoContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Rows(
              centro: false,
              imagemTexto: true,
              doisTextos: false,
              textoPrincipal: "14:30h",
              tamanhoTextoPrincipal: 25,
            ).rowTexto(),
            Container(
              height: 60,
              width: 270,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2),
                    child: Row(
                      children: [
                        Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage(
                                PERFIL2,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5, top: 5),
                          child: ColunaTextos(
                            centro: false,
                            textoPrincipal: "Julia Lima",
                            textoSecundario: "Passeio concluido",
                            tamanhoTextoPrincipal: 20,
                            corTextoPrincipal: Colors.black,
                            corTextoSecundario: kCorNomeDeMenosDestaque,
                            tamanhoTextoSecundario: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, right: 10),
                    child: ColunaTextos(
                      centro: false,
                      textoPrincipal: "43",
                      textoSecundario: "min",
                      tamanhoTextoPrincipal: 20,
                      corTextoPrincipal: Colors.black,
                      corTextoSecundario: kCorNomeDeMenosDestaque,
                      tamanhoTextoSecundario: 15,
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
