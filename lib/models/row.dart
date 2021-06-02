import 'package:flutter/material.dart';

class Rows {
  final ImageProvider? imageProvider;
  final String texto1, texto2, texto3;
  final bool? escolha, doisTextos;
  Rows({
    @required this.escolha,
    @required this.doisTextos,
    this.imageProvider,
    this.texto1 = "",
    this.texto2 = "",
    this.texto3 = "",
  });
  Row rowTexto() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        doisTextos == false
            ? Text(texto1)
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    texto1,
                  ),
                  Text(
                    texto2,
                  ),
                ],
              ),
        escolha == false
            ? CircleAvatar(
                backgroundImage: imageProvider,
                maxRadius: 30,
              )
            : Text(texto3),
      ],
    );
  }
}
