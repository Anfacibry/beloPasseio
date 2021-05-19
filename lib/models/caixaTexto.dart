import 'package:flutter/material.dart';

class CaixaTexto extends StatelessWidget {
  final double? largura, altura, tamanhoFonte;
  final Color? corCaixa;
  final String? nome;
  final bool aparecerOuNao;
  CaixaTexto({
    @required this.largura,
    @required this.altura,
    @required this.corCaixa,
    @required this.nome,
    @required this.tamanhoFonte,
    this.aparecerOuNao = false,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 50, right: 50),
      width: largura,
      height: altura,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: TextField(
            style: TextStyle(
              fontSize: 24,
              color: Colors.grey,
            ),
            decoration: InputDecoration(
              hintText: nome,
              hintStyle: TextStyle(
                fontSize: tamanhoFonte,
              ),
              enabledBorder: InputBorder.none,
              border: InputBorder.none,
            ),
            obscuringCharacter: "*",
            obscureText: aparecerOuNao,
          ),
        ),
      ),
    );
  }
}
