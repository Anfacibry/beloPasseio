import 'package:flutter/material.dart';

class AlturaLargura {
  double alturaPega(BuildContext context) {
    final double altura = MediaQuery.of(context).size.height;
    return altura;
  }

  double larguraPega(BuildContext context) {
    final double largura = MediaQuery.of(context).size.width;
    return largura;
  }
}
