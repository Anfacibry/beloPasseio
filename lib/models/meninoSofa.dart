import 'package:flutter/material.dart';

import '../constantes.dart';

class MeninoSofa extends StatelessWidget {
  const MeninoSofa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
            color: Colors.white,
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: -22,
                child: Container(
                  width: 400,
                  child: Image.asset(
                    MENINOSOFA2,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 70,
          width: 400,
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
                onPressed: () {},
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
