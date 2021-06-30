import 'package:belopasseio/contents/animais.dart';
import 'package:flutter/material.dart';

import '../constantes.dart';
import 'dogsCats.dart';

class RolageListaAnimais extends StatelessWidget {
  const RolageListaAnimais({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...ANIMAIS.map((e) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: DogsCats(
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
    );
  }
}
