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

class EstiloTextos {
  TextStyle estiloTextoPrincipal({
    double? tamanhoFonte,
    Color? corTextoPrincipal,
  }) {
    return TextStyle(
      fontFamily: FontSignikaNegativeFamily,
      fontSize: tamanhoFonte,
      fontWeight: FontWeight.bold,
      color: corTextoPrincipal,
    );
  }

  TextStyle estiloTextoPrincipal2({
    double? tamanhoFonte,
    Color? corTextoSecundario2,
  }) {
    return TextStyle(
      fontFamily: FontSignikaNegativeFamily,
      fontSize: tamanhoFonte,
      fontWeight: FontWeight.bold,
      color: corTextoSecundario2,
    );
  }

  TextStyle estiloTextoSecundario({
    double? tamanhoFonte,
    Color? corTextoSecundario,
  }) {
    return TextStyle(
      fontFamily: FontSignikaNegativeFamily,
      fontSize: tamanhoFonte,
      fontWeight: FontWeight.bold,
      color: corTextoSecundario,
    );
  }
}
