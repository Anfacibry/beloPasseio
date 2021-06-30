import 'package:flutter/material.dart';

class DogsCats extends StatelessWidget {
  final double? alturaPrincipal,
      larguraPrincipal,
      alturaSecundaria,
      larguraSecundaria;
  final String imagemAnimal;
  final String statusAnimal, nomeAnimal;
  final Color? corBotao;

  DogsCats(
    this.imagemAnimal,
    this.statusAnimal,
    this.nomeAnimal, {
    @required this.alturaPrincipal,
    @required this.larguraPrincipal,
    @required this.alturaSecundaria,
    @required this.larguraSecundaria,
    @required this.corBotao,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: alturaPrincipal,
      width: larguraPrincipal,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: alturaSecundaria,
            width: larguraSecundaria,
            child: Image.asset(
              imagemAnimal,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  statusAnimal,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                Text(
                  nomeAnimal,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Passeio"),
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all(corBotao)),
            ),
          ),
        ],
      ),
      clipBehavior: Clip.antiAlias,
    );
  }
}
