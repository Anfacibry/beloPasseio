import 'package:belopasseio/models/mediaQuery.dart';
import 'package:belopasseio/routes/rotas.dart';
import 'package:flutter/material.dart';

import '../constantes.dart';

class Usuario {
  final String perfil1 = "fabriciocintra@gmail.com";
  final String senhaPerfil1 = "1234";
  void verificandoUsuario(
      String usuarioRecebido, String senhaRecebida, BuildContext context) {
    double largura = AlturaLargura().larguraPega(context);
    if (usuarioRecebido == perfil1 && senhaRecebida == senhaPerfil1) {
      Navigator.pushNamed(context, AppRoutes.ROTA_HOME);
    } else {
      Padding(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: Text(
          "Senha incorreta, por favor virifique login e senha e digite novamente!",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: kCorNomeDeMenosDestaque,
            fontWeight: FontWeight.bold,
            fontSize: largura * 0.04,
          ),
        ),
      );
    }
  }
}
