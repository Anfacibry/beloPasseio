import 'package:flutter/material.dart';

class CaixaTexto extends StatelessWidget {
  final double? largura, altura, tamanhoFonte;
  final Color? corCaixa;
  final String? nome;
  CaixaTexto({
    @required this.largura,
    @required this.altura,
    @required this.corCaixa,
    @required this.nome,
    @required this.tamanhoFonte,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 12, top: 20, bottom: 20),
      width: largura,
      height: altura,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: corCaixa,
      ),
      child: TextField(
        decoration: InputDecoration(
          labelText: nome,
          labelStyle: TextStyle(
            fontSize: tamanhoFonte,
          ),
          enabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}
