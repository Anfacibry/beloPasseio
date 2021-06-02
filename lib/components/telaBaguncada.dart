import 'package:belopasseio/contents/animais.dart';
import 'package:belopasseio/models/dogsCats.dart';
import 'package:flutter/material.dart';

import '../constantes.dart';

class Bagunca extends StatelessWidget {
  const Bagunca({Key? key}) : super(key: key);

  get imageProvider => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 60, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Bem vindo de volta",
                      style: TextStyle(
                        color: kCorNomeDeMenosDestaque,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      "Fabricio Cintra",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                CircleAvatar(
                  backgroundImage: imageProvider,
                  maxRadius: 30,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...ANIMAIS.map((e) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DogsCats(
                      FUNDO,
                      e["imagem"]!,
                      e["status"]!,
                      e["nome"]!,
                      alturaPrincipal: 200,
                      larguraPrincipal: 150,
                      alturaSecundaria: 100,
                      larguraSecundaria: 150,
                      corBotao: kCorBotao,
                    ),
                  );
                }).toList(),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Convidar para um passeio",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "Criar",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Stack(
            //Início do Stack que faz todo o layut com o menino no sofá e o menino
            // com o cachorro
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 20, left: 20),
                    height: 100,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage(
                          FUNDO,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          top: -36,
                          child: Container(
                            width: 350,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset(
                                  MENINOSOFA,
                                  height: 160,
                                  width: 160,
                                ),
                                Image.asset(
                                  MENINO2,
                                  height: 150,
                                  width: 150,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20, left: 20),
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
              ),
            ],
          ),
          //Fim do Stack que faz todo o layut com o menino no sofá e o menino
          // com o cachorro
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "Planos",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Hoje",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: kCorNomeDeMenosDestaque,
                      ),
                    ),
                  ],
                ),
                Text(
                  "Add Novo",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "14:00h",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 60,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2),
                        child: Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage(PERFIL2),
                                fit: BoxFit.cover,
                              )),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Julia Lima",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Passeio concluido",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "43",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Min",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "17:00h",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  width: 250,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 3,
                        width: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: kCorNomeDeMenosDestaque,
                        ),
                      ),
                      Container(
                        height: 3,
                        width: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: kCorNomeDeMenosDestaque,
                        ),
                      ),
                      Container(
                        height: 3,
                        width: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: kCorNomeDeMenosDestaque,
                        ),
                      ),
                      Container(
                        height: 3,
                        width: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: kCorNomeDeMenosDestaque,
                        ),
                      ),
                      Container(
                        height: 3,
                        width: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: kCorNomeDeMenosDestaque,
                        ),
                      ),
                      Container(
                        height: 3,
                        width: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: kCorNomeDeMenosDestaque,
                        ),
                      ),
                      Container(
                        height: 3,
                        width: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: kCorNomeDeMenosDestaque,
                        ),
                      ),
                      Container(
                        height: 3,
                        width: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: kCorNomeDeMenosDestaque,
                        ),
                      ),
                      Container(
                        height: 3,
                        width: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: kCorNomeDeMenosDestaque,
                        ),
                      ),
                      Container(
                        height: 3,
                        width: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: kCorNomeDeMenosDestaque,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
