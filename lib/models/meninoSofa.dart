import 'package:belopasseio/models/mediaQuery.dart';
import 'package:flutter/material.dart';

import '../constantes.dart';

class MeninoSofa extends StatelessWidget {
  final void Function()? fun;
  const MeninoSofa({@required this.fun, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double largura = AlturaLargura().larguraPega(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 2),
          child: Container(
            height: largura * 0.30,
            width: largura * 1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
              image: DecorationImage(
                image: AssetImage(MENINOSOFA2),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Container(
          height: 70,
          width: largura * 1,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Gabriel e Junior",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "25 de maio - 2021",
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: fun,
                child: Text(
                  "Rota",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    kCorBotao,
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
