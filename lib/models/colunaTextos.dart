import 'package:flutter/material.dart';

import 'modelosTextos.dart';

class ColunaTextos extends StatelessWidget {
  final bool? centro;
  final String? textoPrincipal, textoSecundario;
  final double? tamanhoTextoPrincipal, tamanhoTextoSecundario;
  final Color? corTextoPrincipal, corTextoSecundario;
  const ColunaTextos({
    Key? key,
    @required this.centro,
    @required this.textoPrincipal,
    @required this.textoSecundario,
    @required this.tamanhoTextoPrincipal,
    @required this.corTextoPrincipal,
    @required this.corTextoSecundario,
    @required this.tamanhoTextoSecundario,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: centro == false
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.center,
      children: [
        Text(
          textoPrincipal!,
          style: EstiloTextos().estiloTextoPrincipal(
            tamanhoFonte: tamanhoTextoPrincipal,
            corTextoPrincipal: corTextoPrincipal,
          ),
        ),
        Text(
          textoSecundario!,
          style: EstiloTextos().estiloTextoSecundario(
            tamanhoFonte: tamanhoTextoSecundario,
            corTextoSecundario: corTextoSecundario,
          ),
        ),
      ],
    );
  }
}
