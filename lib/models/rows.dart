import 'package:belopasseio/models/modelosTextos.dart';
import 'package:flutter/material.dart';

class Rows {
  final ImageProvider? imageProvider;
  final String textoPrincipal, textoSecundario, textoSecundario2;
  final bool? imagemTexto, doisTextos, centro;
  final double? tamanhoTextoPrincipal,
      tamanhoTextoSecundario,
      tamanhoTextoSecundario2;
  final Color? corTextoPrincipal, corTextoSecundario, corTextoSecundario2;
  Rows({
    @required this.imagemTexto,
    @required this.doisTextos,
    @required this.centro,
    this.tamanhoTextoPrincipal,
    this.tamanhoTextoSecundario,
    this.tamanhoTextoSecundario2,
    this.corTextoPrincipal,
    this.corTextoSecundario,
    this.corTextoSecundario2,
    this.imageProvider,
    this.textoPrincipal = "",
    this.textoSecundario = "",
    this.textoSecundario2 = "",
  });
  Row rowTexto() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        doisTextos == false
            ? Text(
                textoPrincipal,
                style: EstiloTextos().estiloTextoPrincipal(
                  tamanhoFonte: tamanhoTextoPrincipal,
                  corTextoPrincipal: corTextoPrincipal,
                ),
              )
            : Column(
                crossAxisAlignment: centro == false
                    ? CrossAxisAlignment.start
                    : CrossAxisAlignment.center,
                children: [
                  Text(
                    textoPrincipal,
                    style: EstiloTextos().estiloTextoPrincipal(
                      tamanhoFonte: tamanhoTextoPrincipal,
                      corTextoPrincipal: corTextoPrincipal,
                    ),
                  ),
                  Text(
                    textoSecundario,
                    style: EstiloTextos().estiloTextoSecundario(
                      tamanhoFonte: tamanhoTextoSecundario,
                      corTextoSecundario: corTextoSecundario,
                    ),
                  ),
                ],
              ),
        imagemTexto == false
            ? CircleAvatar(
                backgroundImage: imageProvider,
                maxRadius: 30,
              )
            : Text(
                textoSecundario2,
                style: EstiloTextos().estiloTextoPrincipal2(
                  tamanhoFonte: tamanhoTextoSecundario2,
                  corTextoSecundario2: corTextoSecundario2,
                ),
              ),
      ],
    );
  }
}
