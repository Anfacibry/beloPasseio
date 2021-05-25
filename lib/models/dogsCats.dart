import 'package:flutter/material.dart';

class DogsCats extends StatelessWidget {
  final double? alturaPrincipal,
      larguraPrincipal,
      alturaSecundaria,
      larguraSecundaria;
  final String imagemFundo, imagemAnimal;
  final String statusAnimal, nomeAnimal;
  final Color? corBotao;

  DogsCats(
    this.imagemFundo,
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
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  imagemFundo,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Center(child: Image.asset(imagemAnimal)),
              ],
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
