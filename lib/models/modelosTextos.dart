import 'dart:ui';

import 'package:flutter/material.dart';

import '../constantes.dart';

class ModeloTextos {
  final String textoPrincipalRecebido;
  ModeloTextos(this.textoPrincipalRecebido);
  Text textoPrincipal() {
    return Text(
      textoPrincipalRecebido,
      style: TextStyle(
        fontFamily: FontSignikaNegativeFamily,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class StyleTextos {
  TextStyle estiloTextoPrincipal() {
    return TextStyle(
      fontFamily: FontSignikaNegativeFamily,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    );
  }

  TextStyle estiloTextoSecundario() {
    return TextStyle(
      fontFamily: FontSignikaNegativeFamily,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: kCorNomeDeMenosDestaque,
    );
  }

  TextStyle estiloTextoSecundario2() {
    return TextStyle(
      fontFamily: FontSignikaNegativeFamily,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );
  }
}
