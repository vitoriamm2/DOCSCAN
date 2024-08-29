// Author: Vitoria Medeiros e Valdenize Souza===========
//======================================================
// ============= Programa DocScan=======================

//import 'package:doc_scan_beta_02/setup/pagModel/modelDinamic/HomeCapDados.dart';
//import 'package:doc_scan_beta_02/setup/pagModel/modelDinamic/DadosTeste01.dart';
import 'package:doc_scan_beta_02/setup/pagModel/modelDinamic/HomeCriarDoc.dart';
//import 'package:doc_scan_beta_02/setup/pagModel/modelDinamic/HomeDados.dart';
import 'package:doc_scan_beta_02/setup/pagModel/modelDinamic/HomeDadosHome.dart';
import 'package:doc_scan_beta_02/setup/pagModel/modelEstatico/SobreInfo.dart';
import 'package:doc_scan_beta_02/setup/pagModel/modelEstatico/pagExige.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.light(),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeCriarDoc(),
        'telaSobre': (context) => SobreInfo(),
        'telaExigencias': (context) => PagExige(),
        'criar': (context) => HomeDadosTeste(),
      },
    );
  }
}

void main() {
  runApp(const MyApp());
}
