import 'package:flutter/material.dart';

import '../constantes.dart';

class BotaoFoto extends StatelessWidget {
  final double? alturaMultiplicada;
  const BotaoFoto({
    Key? key,
    required this.largura,
    required this.alturaMultiplicada,
  }) : super(key: key);

  final double largura;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: largura * alturaMultiplicada!,
        width: largura * 0.4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
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
    );
  }
}
