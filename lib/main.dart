import 'package:belopasseio/constantes.dart';
import 'package:belopasseio/pages/home.dart';
import 'package:belopasseio/pages/login.dart';
import 'package:belopasseio/pages/page_detalhe_passeio.dart';
import 'package:belopasseio/routes/rotas.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: kCorDeTelaDeFundo,
          fontFamily: FontSignikaNegativeFamily,
          accentColor: kCorBotao,
        ),
        initialRoute: AppRoutes.ROTA_PRINCIPAL,
        routes: {
          AppRoutes.ROTA_PRINCIPAL: (context) => Login(),
          AppRoutes.ROTA_HOME: (context) => HomePrincipal(),
          AppRoutes.ROTA_PASSEIO: (context) => PageDetalhePasseio(),
        });
  }
}
