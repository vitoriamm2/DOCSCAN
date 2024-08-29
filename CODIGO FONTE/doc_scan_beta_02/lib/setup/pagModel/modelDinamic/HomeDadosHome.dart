//===========class de principla de dados em processamento======
import 'dart:io';
import 'package:camera_camera/camera_camera.dart';
//import 'package:doc_scan_beta_02/setup/pagModel/modelDinamic/ModelCurrentCustom.dart';
import 'package:doc_scan_beta_02/setup/pagModel/modelEstatico/MostrarImagens.dart';
//import 'package:doc_scan_beta_02/setup/pagModel/modelEstatico/MostrarImagens.dart';
//import 'package:doc_scan_beta_02/setup/pagModel/modelDinamic/HomeCapDados.dart';
import 'package:doc_scan_beta_02/setup/pagModel/modelEstatico/PreviewPage.dart';
//import 'package:doc_scan_beta_02/setup/pagModel/modelEstatico/modeCurrent.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeDadosTeste extends StatefulWidget {
  const HomeDadosTeste({super.key});

  @override
  State<HomeDadosTeste> createState() => _HomeDadosState();
}

class _HomeDadosState extends State<HomeDadosTeste> {
// ------- variaveis para armazenar==========
  TextEditingController textController = TextEditingController();
  int quantIrma = 0;
  String exbirNome = "";
  List<Widget> listaWidget = [];

  List<File?> arquivo = [];
  bool isChecked = false;
//===========Lista de variaveis para serem coletadas======
  List<File?> frenteRG = [];
  List<File?> versoRG = [];
  List<File?> frenteCPF = [];
  List<File?> carteiraTrabalho = [];
  List<File?> comprovanteResi = [];

  List<File?> frenteRgPai = [];
  List<File?> versoRgPai = [];
  List<File?> frenteCpfPai = [];
  List<File?> carteiraTrabalhoPai = [];

  List<File?> frenteRgMae = [];
  List<File?> versoRgMae = [];
  List<File?> frenteCpfMae = [];
  List<File?> carteiraTrabalhoMae = [];

  List<File?> frenteRgBrother = [];
  List<File?> versoRgBrother = [];
  List<File?> frenteCpfBrother = [];
  List<File?> carteiraTrabalhoBrother = [];

  void verificarLista() {
    if (arquivo.isEmpty) {
      print("OK pode criarr");
    } else {
      arquivo.clear();
    }
  }

  bool podeTirarFoto() {
    return arquivo.length == 0;
  }

  @override
  void initState() {
    super.initState();
    verificarLista();
  }

  void emitirAlerta() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("Fechar"))
              ],
              title: Text('Aviso de arquivo deletado'),
              contentPadding: EdgeInsets.all(20.0),
              content: Text('Arquivo deletado!'),
            ));
  }

//============= funções de visualização de Dados =====================

  mostrarPreviewFrenteRG(file) async {
    file = await Get.to(() => PreviewPage(file: file));
// ignore: unnecessary_null_comparison
    if (file != null) {
      setState(() => frenteRG.add(file));
      arquivo.addAll(frenteRG);
      Get.back();
    }
    print(arquivo);
    print(arquivo.length);
  }

  mostrarPreviewVersoRG(file) async {
    file = await Get.to(() => PreviewPage(file: file));
// ignore: unnecessary_null_comparison
    if (file != null) {
      setState(() => versoRG.add(file));
      arquivo.addAll(versoRG);
      Get.back();
    }
    print(arquivo);
    print(arquivo.length);
  }

  mostrarPreviewFrenteCPF(file) async {
    file = await Get.to(() => PreviewPage(file: file));
// ignore: unnecessary_null_comparison
    if (file != null) {
      setState(() => frenteCPF.add(file));
      arquivo.addAll(frenteCPF);
      Get.back();
    }
    print(arquivo);
    print(arquivo.length);
  }

  mostrarPreviewCarteiraCLT(file) async {
    file = await Get.to(() => PreviewPage(file: file));
// ignore: unnecessary_null_comparison
    if (file != null) {
      setState(() => carteiraTrabalho.add(file));
      arquivo.addAll(carteiraTrabalho);
      Get.back();
    }
    print(arquivo);
    print(arquivo.length);
  }

  mostrarPreviewComprovanteRE(file) async {
    file = await Get.to(() => PreviewPage(file: file));
// ignore: unnecessary_null_comparison
    if (file != null) {
      setState(() => comprovanteResi.add(file));
      arquivo.addAll(comprovanteResi);
      Get.back();
    }

    print(arquivo);
    print(arquivo.length);
  }

  //===============Dados perssoais dos pais===================

  mostrarPreviewFrenteRgPai(file) async {
    file = await Get.to(() => PreviewPage(file: file));
// ignore: unnecessary_null_comparison
    if (file != null) {
      setState(() => frenteRgPai.add(file));
      arquivo.addAll(frenteRgPai);
      Get.back();
    }
    print(arquivo);
    print(arquivo.length);
  }

  mostrarPreviewVersoRgPai(file) async {
    file = await Get.to(() => PreviewPage(file: file));
// ignore: unnecessary_null_comparison
    if (file != null) {
      setState(() => versoRgPai.add(file));
      arquivo.addAll(versoRgPai);
      Get.back();
    }
    print(arquivo);
    print(arquivo.length);
  }

  mostrarPreviewCpfPai(file) async {
    file = await Get.to(() => PreviewPage(file: file));
// ignore: unnecessary_null_comparison
    if (file != null) {
      setState(() => frenteCpfPai.add(file));
      arquivo.addAll(frenteCpfPai);
      Get.back();
    }
    print(arquivo);
    print(arquivo.length);
  }

  // ignore: non_constant_identifier_names
  mostrarPreviewCarteiraCLT_pai(file) async {
    file = await Get.to(() => PreviewPage(file: file));
// ignore: unnecessary_null_comparison
    if (file != null) {
      setState(() => carteiraTrabalhoPai.add(file));
      arquivo.addAll(carteiraTrabalhoPai);
      Get.back();
    }
    print(arquivo);
    print(arquivo.length);
  }

  //=======================Dados pessoais da mãe-===========

  mostrarPreviewFrenteRgMae(file) async {
    file = await Get.to(() => PreviewPage(file: file));
// ignore: unnecessary_null_comparison
    if (file != null) {
      setState(() => frenteRgMae.add(file));
      arquivo.addAll(frenteRgMae);
      Get.back();
    }
    print(arquivo);
    print(arquivo.length);
  }

  mostrarPreviewVersoRgMae(file) async {
    file = await Get.to(() => PreviewPage(file: file));
// ignore: unnecessary_null_comparison
    if (file != null) {
      setState(() => versoRgMae.add(file));
      arquivo.addAll(versoRgMae);
      Get.back();
    }
    print(arquivo);
    print(arquivo.length);
  }

  mostrarPreviewfrenteCpfMae(file) async {
    file = await Get.to(() => PreviewPage(file: file));
// ignore: unnecessary_null_comparison
    if (file != null) {
      setState(() => frenteCpfMae.add(file));
      arquivo.addAll(frenteCpfMae);
      Get.back();
    }
    print(arquivo);
    print(arquivo.length);
  }

  // ignore: non_constant_identifier_names
  mostrarPreviewCarteiraDeClt_Mae(file) async {
    file = await Get.to(() => PreviewPage(file: file));
// ignore: unnecessary_null_comparison
    if (file != null) {
      setState(() => carteiraTrabalhoMae.add(file));
      arquivo.addAll(carteiraTrabalhoMae);
      Get.back();
    }
    print(arquivo);
    print(arquivo.length);
  }

  //===============DADOS PESSOAIS IRMÃOS-==============

  mostrarPreviewFrenteRgIrma(file) async {
    file = await Get.to(() => PreviewPage(file: file));
// ignore: unnecessary_null_comparison
    if (file != null) {
      setState(() => frenteRgBrother.add(file));
      arquivo.addAll(frenteRgBrother);
      Get.back();
    }
    print(arquivo);
    print(arquivo.length);
  }

  mostrarPreviewVersoRgIrma(file) async {
    file = await Get.to(() => PreviewPage(file: file));
// ignore: unnecessary_null_comparison
    if (file != null) {
      setState(() => versoRgBrother.add(file));
      arquivo.addAll(versoRgBrother);
      Get.back();
    }
    print(arquivo);
    print(arquivo.length);
  }

  mostrarPreviewfrenteCpfIrma(file) async {
    file = await Get.to(() => PreviewPage(file: file));
// ignore: unnecessary_null_comparison
    if (file != null) {
      setState(() => frenteCpfBrother.add(file));
      arquivo.addAll(frenteCpfBrother);
      Get.back();
    }
    print(arquivo);
    print(arquivo.length);
  }

  // ignore: non_constant_identifier_names
  mostrarPreviewCarteiraDeClt_Irma(file) async {
    file = await Get.to(() => PreviewPage(file: file));
// ignore: unnecessary_null_comparison
    if (file != null) {
      setState(() => carteiraTrabalhoBrother.add(file));
      arquivo.addAll(carteiraTrabalhoBrother);
      Get.back();
    }
    print(arquivo);
    print(arquivo.length);
  }

  Widget _body() {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text(
          'DocScan',
          // ignore: prefer_const_constructors
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding:
                const EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 30),
            child: Column(
              children: [
                //==============DADOS PESSOAIS USUARIO=================
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 500,
                        color: Color.fromARGB(255, 239, 239, 239),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        color: Color.fromARGB(255, 171, 171, 171),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Text(
                            "DADOS PESSOAIS",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                      //===========container dos Dados====================

                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 20, right: 10, top: 70, bottom: 3),
                          child: Column(
                            children: [
                              //=====frente RG============
                              Row(
                                children: [
                                  TextButton.icon(
                                      style: frenteRG.isNotEmpty
                                          ? ButtonStyle(
                                              foregroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(Colors.green),
                                              // Outros estilos desejados
                                            )
                                          : ButtonStyle(
                                              foregroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(Colors.blue),
                                              // Outros estilos desejados para o estado desativado
                                            ),
                                      onPressed: frenteRG.isEmpty
                                          ? () {
                                              // ignore: unnecessary_null_comparison

                                              setState(() {
                                                Get.to(
                                                  () => CameraCamera(
                                                      onFile: (file) =>
                                                          mostrarPreviewFrenteRG(
                                                              file)),
                                                );
                                              });
                                            }
                                          : null,
                                      icon: Icon(Icons.camera_alt),
                                      label: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Text(
                                          'Frente RG:',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      )),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  /* IconButton(
                                      onPressed: frenteRG.isNotEmpty
                                          ? () {
                                              setState(() {
                                                // ignore: list_remove_unrelated_type
                                                frenteRG.clear();
                                                arquivo.removeLast();
                                                print("arquivo removido");
                                                print(frenteRG.length);
                                                print(frenteRG);
                                                emitirAlerta();
                                              });
                                              // ignore: unnecessary_null_comparison
                                            }
                                          : null,
                                      icon: Icon(Icons.delete)),*/
                                ],
                              ),

                              //============================
                              //=============Verso RG============
                              Row(
                                children: [
                                  TextButton.icon(
                                      style: versoRG.isNotEmpty
                                          ? ButtonStyle(
                                              foregroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(Colors.green),
                                              // Outros estilos desejados
                                            )
                                          : ButtonStyle(
                                              foregroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(Colors.blue),
                                              // Outros estilos desejados para o estado desativado
                                            ),
                                      onPressed: versoRG.isEmpty
                                          ? () {
                                              // ignore: unnecessary_null_comparison

                                              setState(() {
                                                Get.to(
                                                  () => CameraCamera(
                                                      onFile: (file) =>
                                                          mostrarPreviewVersoRG(
                                                              file)),
                                                );
                                              });
                                            }
                                          : null,
                                      icon: Icon(Icons.camera_alt),
                                      label: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Text(
                                          'Verso RG:',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      )),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  /* IconButton(
                                      onPressed: versoRG.isNotEmpty
                                          ? () {
                                              setState(() {
                                                // ignore: list_remove_unrelated_type
                                                versoRG.clear();
                                                arquivo.removeLast();
                                                print("arquivo removido");
                                                print(versoRG.length);
                                                print(versoRG);
                                                emitirAlerta();
                                              });
                                            }
                                          : null,
                                      icon: Icon(Icons.delete)),*/
                                ],
                              ),
                              //===========================================
                              //======frente CPF============================
                              Row(
                                children: [
                                  TextButton.icon(
                                      style: frenteCPF.isNotEmpty
                                          ? ButtonStyle(
                                              foregroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(Colors.green),
                                              // Outros estilos desejados
                                            )
                                          : ButtonStyle(
                                              foregroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(Colors.blue),
                                              // Outros estilos desejados para o estado desativado
                                            ),
                                      onPressed: frenteCPF.isEmpty
                                          ? () {
                                              // ignore: unnecessary_null_comparison

                                              setState(() {
                                                Get.to(
                                                  () => CameraCamera(
                                                      onFile: (file) =>
                                                          mostrarPreviewFrenteCPF(
                                                              file)),
                                                );
                                              });
                                            }
                                          : null,
                                      icon: Icon(Icons.camera_alt),
                                      label: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Text(
                                          'Frente CPF:',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      )),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  /* IconButton(
                                      onPressed: frenteCPF.isNotEmpty
                                          ? () {
                                              setState(() {
                                                // ignore: list_remove_unrelated_type
                                                frenteCPF.clear();
                                                arquivo.removeLast();
                                                print("arquivo removido");
                                                print(frenteCPF.length);
                                                print(frenteCPF);
                                                emitirAlerta();
                                              });
                                            }
                                          : null,
                                      icon: Icon(Icons.delete)),*/
                                ],
                              ),
                              //=====================================================
                              //============Carteira de Trabalho=======================
                              Row(
                                children: [
                                  TextButton.icon(
                                      style: carteiraTrabalho.isNotEmpty
                                          ? ButtonStyle(
                                              foregroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(Colors.green),
                                              // Outros estilos desejados
                                            )
                                          : ButtonStyle(
                                              foregroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(Colors.blue),
                                              // Outros estilos desejados para o estado desativado
                                            ),
                                      onPressed: carteiraTrabalho.isEmpty
                                          ? () {
                                              // ignore: unnecessary_null_comparison

                                              setState(() {
                                                Get.to(
                                                  () => CameraCamera(
                                                      onFile: (file) =>
                                                          mostrarPreviewCarteiraCLT(
                                                              file)),
                                                );
                                              });
                                            }
                                          : null,
                                      icon: Icon(Icons.camera_alt),
                                      label: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Text(
                                          'Carteira de trabalho:',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      )),
                                  SizedBox(
                                    width: 1,
                                  ),
                                  /* IconButton(
                                      onPressed: carteiraTrabalho.isNotEmpty
                                          ? () {
                                              setState(() {
                                                // ignore: list_remove_unrelated_type
                                                carteiraTrabalho.clear();
                                                arquivo.removeLast();
                                                print("arquivo removido");
                                                print(carteiraTrabalho.length);
                                                print(carteiraTrabalho);
                                                emitirAlerta();
                                              });
                                            }
                                          : null,
                                      icon: Icon(Icons.delete)),*/
                                ],
                              ),
                              //==========================================
                              //===========Comprovante de residencia---------------
                              Row(
                                children: [
                                  TextButton.icon(
                                      style: comprovanteResi.isNotEmpty
                                          ? ButtonStyle(
                                              foregroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(Colors.green),
                                              // Outros estilos desejados
                                            )
                                          : ButtonStyle(
                                              foregroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(Colors.blue),
                                              // Outros estilos desejados para o estado desativado
                                            ),
                                      onPressed: comprovanteResi.isEmpty
                                          ? () {
                                              // ignore: unnecessary_null_comparison

                                              setState(() {
                                                Get.to(
                                                  () => CameraCamera(
                                                      onFile: (file) =>
                                                          mostrarPreviewComprovanteRE(
                                                              file)),
                                                );
                                              });
                                            }
                                          : null,
                                      icon: Icon(Icons.camera_alt),
                                      label: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Text(
                                          'Comprovante Resi.',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      )),
                                  SizedBox(
                                    width: 1,
                                  ),
                                  /*IconButton(
                                      onPressed: comprovanteResi.isNotEmpty
                                          ? () {
                                              setState(() {
                                                // ignore: list_remove_unrelated_type
                                                comprovanteResi.clear();
                                                arquivo.removeLast();
                                                print("arquivo removido");
                                                print(comprovanteResi.length);
                                                print(comprovanteResi);
                                                emitirAlerta();
                                              });
                                            }
                                          : null,
                                      icon: Icon(Icons.delete)),*/
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //=========================================================================

                //==================DADOS PESSOAIS PAI ==============================
                SizedBox(
                  height: 20,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 400,
                        color: Color.fromARGB(255, 239, 239, 239),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        color: Color.fromARGB(255, 171, 171, 171),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Text(
                            "DOCUMENTOS PAI",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                      //===========container dos Dados====================

                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 20, right: 10, top: 70, bottom: 3),
                          child: Column(
                            children: [
                              //=====frente RG============
                              Row(
                                children: [
                                  TextButton.icon(
                                      style: frenteRgPai.isNotEmpty
                                          ? ButtonStyle(
                                              foregroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(Colors.green),
                                              // Outros estilos desejados
                                            )
                                          : ButtonStyle(
                                              foregroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(Colors.blue),
                                              // Outros estilos desejados para o estado desativado
                                            ),
                                      onPressed: frenteRgPai.isEmpty
                                          ? () {
                                              // ignore: unnecessary_null_comparison

                                              setState(() {
                                                Get.to(
                                                  () => CameraCamera(
                                                      onFile: (file) =>
                                                          mostrarPreviewFrenteRgPai(
                                                              file)),
                                                );
                                              });
                                            }
                                          : null,
                                      icon: Icon(Icons.camera_alt),
                                      label: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Text(
                                          'Frente RG:',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      )),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  /* IconButton(
                                      onPressed: frenteRgPai.isNotEmpty
                                          ? () {
                                              setState(() {
                                                // ignore: list_remove_unrelated_type
                                                frenteRgPai.clear();
                                                arquivo.removeLast();
                                                print("arquivo removido");
                                                print(frenteRgPai.length);
                                                print(frenteRgPai);
                                                emitirAlerta();
                                              });
                                              // ignore: unnecessary_null_comparison
                                            }
                                          : null,
                                      icon: Icon(Icons.delete)),*/
                                ],
                              ),

                              //============================
                              //=============Verso RG============
                              Row(
                                children: [
                                  TextButton.icon(
                                      style: versoRgPai.isNotEmpty
                                          ? ButtonStyle(
                                              foregroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(Colors.green),
                                              // Outros estilos desejados
                                            )
                                          : ButtonStyle(
                                              foregroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(Colors.blue),
                                              // Outros estilos desejados para o estado desativado
                                            ),
                                      onPressed: versoRgPai.isEmpty
                                          ? () {
                                              // ignore: unnecessary_null_comparison

                                              setState(() {
                                                Get.to(
                                                  () => CameraCamera(
                                                      onFile: (file) =>
                                                          mostrarPreviewVersoRgPai(
                                                              file)),
                                                );
                                              });
                                            }
                                          : null,
                                      icon: Icon(Icons.camera_alt),
                                      label: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Text(
                                          'Verso RG:',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      )),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  /*IconButton(
                                      onPressed: versoRgPai.isNotEmpty
                                          ? () {
                                              setState(() {
                                                // ignore: list_remove_unrelated_type
                                                versoRgPai.clear();
                                                arquivo.removeLast();
                                                print("arquivo removido");
                                                print(versoRgPai.length);
                                                print(versoRgPai);
                                                emitirAlerta();
                                              });
                                            }
                                          : null,
                                      icon: Icon(Icons.delete)),*/
                                ],
                              ),
                              //===========================================
                              //======frente CPF============================
                              Row(
                                children: [
                                  TextButton.icon(
                                      style: frenteCpfPai.isNotEmpty
                                          ? ButtonStyle(
                                              foregroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(Colors.green),
                                              // Outros estilos desejados
                                            )
                                          : ButtonStyle(
                                              foregroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(Colors.blue),
                                              // Outros estilos desejados para o estado desativado
                                            ),
                                      onPressed: frenteCpfPai.isEmpty
                                          ? () {
                                              // ignore: unnecessary_null_comparison

                                              setState(() {
                                                Get.to(
                                                  () => CameraCamera(
                                                      onFile: (file) =>
                                                          mostrarPreviewCpfPai(
                                                              file)),
                                                );
                                              });
                                            }
                                          : null,
                                      icon: Icon(Icons.camera_alt),
                                      label: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Text(
                                          'Frente CPF:',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      )),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  /* IconButton(
                                      onPressed: frenteCpfPai.isNotEmpty
                                          ? () {
                                              setState(() {
                                                // ignore: list_remove_unrelated_type
                                                frenteCpfPai.clear();
                                                arquivo.removeLast();
                                                print("arquivo removido");
                                                print(frenteCpfPai.length);
                                                print(frenteCpfPai);
                                                emitirAlerta();
                                              });
                                            }
                                          : null,
                                      icon: Icon(Icons.delete)),*/
                                ],
                              ),
                              //=====================================================
                              //============Carteira de Trabalho=======================
                              Row(
                                children: [
                                  TextButton.icon(
                                      style: carteiraTrabalhoPai.isNotEmpty
                                          ? ButtonStyle(
                                              foregroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(Colors.green),
                                              // Outros estilos desejados
                                            )
                                          : ButtonStyle(
                                              foregroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(Colors.blue),
                                              // Outros estilos desejados para o estado desativado
                                            ),
                                      onPressed: carteiraTrabalhoPai.isEmpty
                                          ? () {
                                              // ignore: unnecessary_null_comparison

                                              setState(() {
                                                Get.to(
                                                  () => CameraCamera(
                                                      onFile: (file) =>
                                                          mostrarPreviewCarteiraCLT_pai(
                                                              file)),
                                                );
                                              });
                                            }
                                          : null,
                                      icon: Icon(Icons.camera_alt),
                                      label: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Text(
                                          'Carteira de trabalho:',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      )),
                                  SizedBox(
                                    width: 1,
                                  ),
                                  /*IconButton(
                                      onPressed: carteiraTrabalhoPai.isNotEmpty
                                          ? () {
                                              setState(() {
                                                // ignore: list_remove_unrelated_type
                                                carteiraTrabalhoPai.clear();
                                                arquivo.removeLast();
                                                print("arquivo removido");
                                                print(
                                                    carteiraTrabalhoPai.length);
                                                print(carteiraTrabalhoPai);
                                                emitirAlerta();
                                              });
                                            }
                                          : null,
                                      icon: Icon(Icons.delete)),*/
                                ],
                              ),
                              //==========================================
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //================DADOS PESSOAIS MÃE========================================
                SizedBox(
                  height: 20,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 400,
                        color: Color.fromARGB(255, 239, 239, 239),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        color: Color.fromARGB(255, 171, 171, 171),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Text(
                            "DOCUMENTOS MÃE",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                      //===========container dos Dados====================

                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 20, right: 10, top: 70, bottom: 3),
                          child: Column(
                            children: [
                              //=====frente RG============
                              Row(
                                children: [
                                  TextButton.icon(
                                      style: frenteRgMae.isNotEmpty
                                          ? ButtonStyle(
                                              foregroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(Colors.green),
                                              // Outros estilos desejados
                                            )
                                          : ButtonStyle(
                                              foregroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(Colors.blue),
                                              // Outros estilos desejados para o estado desativado
                                            ),
                                      onPressed: frenteRgMae.isEmpty
                                          ? () {
                                              // ignore: unnecessary_null_comparison

                                              setState(() {
                                                Get.to(
                                                  () => CameraCamera(
                                                      onFile: (file) =>
                                                          mostrarPreviewFrenteRgMae(
                                                              file)),
                                                );
                                              });
                                            }
                                          : null,
                                      icon: Icon(Icons.camera_alt),
                                      label: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Text(
                                          'Frente RG:',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      )),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  /*   IconButton(
                                      onPressed: frenteRgMae.isNotEmpty
                                          ? () {
                                              setState(() {
                                                // ignore: list_remove_unrelated_type
                                                frenteRgMae.clear();
                                                arquivo.removeLast();
                                                print("arquivo removido");
                                                print(frenteRgMae.length);
                                                print(frenteRgMae);
                                                emitirAlerta();
                                              });
                                              // ignore: unnecessary_null_comparison
                                            }
                                          : null,
                                      icon: Icon(Icons.delete)),*/
                                ],
                              ),

                              //============================
                              //=============Verso RG============
                              Row(
                                children: [
                                  TextButton.icon(
                                      style: versoRgMae.isNotEmpty
                                          ? ButtonStyle(
                                              foregroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(Colors.green),
                                              // Outros estilos desejados
                                            )
                                          : ButtonStyle(
                                              foregroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(Colors.blue),
                                              // Outros estilos desejados para o estado desativado
                                            ),
                                      onPressed: versoRgMae.isEmpty
                                          ? () {
                                              // ignore: unnecessary_null_comparison

                                              setState(() {
                                                Get.to(
                                                  () => CameraCamera(
                                                      onFile: (file) =>
                                                          mostrarPreviewVersoRgMae(
                                                              file)),
                                                );
                                              });
                                            }
                                          : null,
                                      icon: Icon(Icons.camera_alt),
                                      label: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Text(
                                          'Verso RG:',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      )),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  /* IconButton(
                                      onPressed: versoRgPai.isNotEmpty
                                          ? () {
                                              setState(() {
                                                // ignore: list_remove_unrelated_type
                                                versoRgMae.clear();
                                                arquivo.removeLast();
                                                print("arquivo removido");
                                                print(versoRgMae.length);
                                                print(versoRgMae);
                                                emitirAlerta();
                                              });
                                            }
                                          : null,
                                      icon: Icon(Icons.delete)),*/
                                ],
                              ),
                              //===========================================
                              //======frente CPF============================
                              Row(
                                children: [
                                  TextButton.icon(
                                      style: frenteCpfMae.isNotEmpty
                                          ? ButtonStyle(
                                              foregroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(Colors.green),
                                              // Outros estilos desejados
                                            )
                                          : ButtonStyle(
                                              foregroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(Colors.blue),
                                              // Outros estilos desejados para o estado desativado
                                            ),
                                      onPressed: frenteCpfMae.isEmpty
                                          ? () {
                                              // ignore: unnecessary_null_comparison

                                              setState(() {
                                                Get.to(
                                                  () => CameraCamera(
                                                      onFile: (file) =>
                                                          mostrarPreviewfrenteCpfMae(
                                                              file)),
                                                );
                                              });
                                            }
                                          : null,
                                      icon: Icon(Icons.camera_alt),
                                      label: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Text(
                                          'Frente CPF:',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      )),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  /*IconButton(
                                      onPressed: frenteCpfMae.isNotEmpty
                                          ? () {
                                              setState(() {
                                                // ignore: list_remove_unrelated_type
                                                frenteCpfMae.clear();
                                                arquivo.removeLast();
                                                print("arquivo removido");
                                                print(frenteCpfMae.length);
                                                print(frenteCpfMae);
                                                emitirAlerta();
                                              });
                                            }
                                          : null,
                                      icon: Icon(Icons.delete)),*/
                                ],
                              ),
                              //=====================================================
                              //============Carteira de Trabalho=======================
                              Row(
                                children: [
                                  TextButton.icon(
                                      style: carteiraTrabalhoMae.isNotEmpty
                                          ? ButtonStyle(
                                              foregroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(Colors.green),
                                              // Outros estilos desejados
                                            )
                                          : ButtonStyle(
                                              foregroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(Colors.blue),
                                              // Outros estilos desejados para o estado desativado
                                            ),
                                      onPressed: carteiraTrabalhoMae.isEmpty
                                          ? () {
                                              // ignore: unnecessary_null_comparison

                                              setState(() {
                                                Get.to(
                                                  () => CameraCamera(
                                                      onFile: (file) =>
                                                          mostrarPreviewCarteiraDeClt_Mae(
                                                              file)),
                                                );
                                              });
                                            }
                                          : null,
                                      icon: Icon(Icons.camera_alt),
                                      label: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Text(
                                          'Carteira de trabalho:',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      )),
                                  SizedBox(
                                    width: 1,
                                  ),
                                  /*  IconButton(
                                      onPressed: carteiraTrabalhoMae.isNotEmpty
                                          ? () {
                                              setState(() {
                                                // ignore: list_remove_unrelated_type
                                                carteiraTrabalhoMae.clear();
                                                arquivo.removeLast();
                                                print("arquivo removido");
                                                print(
                                                    carteiraTrabalhoMae.length);
                                                print(carteiraTrabalhoMae);
                                                emitirAlerta();
                                              });
                                            }
                                          : null,
                                      icon: Icon(Icons.delete)),*/
                                ],
                              ),
                              //==========================================
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 20,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    color: Colors.grey,
                    child: Row(
                      children: [
                        Checkbox(
                          value: isChecked,
                          onChanged: (value) {
                            setState(() {
                              isChecked = value!;
                              value
                                  ? _DadosBrother()
                                  : Container(
                                      width: 600,
                                      height: 600,
                                      color: Colors.amber,
                                    );
                            });
                          },
                        ),
                        Text(
                          'Você possui Irmãos(a)?',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                //======== processamento de seleção de irmãos=============

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: SizedBox(
                        width: 200,
                        child: Visibility(
                          visible: isChecked,
                          child: Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  controller: textController,
                                  decoration: InputDecoration(
                                    labelText: "Quantidade?",
                                  ),
                                  style: TextStyle(color: Colors.green),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                  child: ElevatedButton(
                                      style: ButtonStyle(
                                          shape: MaterialStateProperty.all(
                                            RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              side: BorderSide(
                                                  color: Colors.green),
                                            ),
                                          ),
                                          backgroundColor: MaterialStateProperty
                                              .resolveWith<Color>((states) {
                                            return Color.fromARGB(
                                                255, 255, 255, 255);
                                          })),
                                      onPressed: () {
                                        setState(() {
                                          //exbirNome = textController.text;
                                          try {
                                            quantIrma =
                                                int.parse(textController.text);

                                            List<Widget> generatedWidgets = [];

                                            for (int i = 0;
                                                i < quantIrma;
                                                i++) {
                                              setState(() {
                                                generatedWidgets
                                                    .add(_DadosBrother());
                                              });
                                            }
                                            listaWidget = generatedWidgets;
                                          } catch (e) {
                                            print("Dados de error: $e");
                                          }
                                        });
                                      },
                                      child: Text(
                                        "Gerar",
                                        style: TextStyle(color: Colors.green),
                                      ))),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ...listaWidget,
              ],
            ),
          ),
        ),
      ),

//============================================================================

      /*floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.menu),
      ),*/
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Colors.green, //Theme.of(context).colorScheme.primary,
        child: IconTheme(
          data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: arquivo.isNotEmpty
                      ? () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) =>
                                    MostrarIamgens(imagens: arquivo),
                                fullscreenDialog: true),
                          )
                      : null,
                  icon: const Icon(Icons.photo),
                  iconSize: 37,
                ),
                IconButton(
                  onPressed: () {
                    if (arquivo.isNotEmpty) {
                      setState(() {
                        frenteRG.clear();
                        versoRG.clear();
                        frenteCPF.clear();
                        carteiraTrabalho.cast();
                        comprovanteResi.clear();
                        frenteRgPai.clear();
                        versoRgPai.clear();
                        frenteCpfPai.clear();
                        carteiraTrabalhoPai.clear();
                        frenteRgMae.clear();
                        versoRgMae.clear();
                        frenteCpfMae.clear();
                        carteiraTrabalhoMae.clear();
                        frenteRgBrother.clear();
                        frenteCpfBrother.clear();
                        versoRgBrother.clear();
                        frenteCpfBrother.clear();
                        carteiraTrabalhoBrother.clear();
                        arquivo.clear();
                      });
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text("Fechar"))
                                ],
                                title: Text('Aviso de arquivos deletados'),
                                contentPadding: EdgeInsets.all(20.0),
                                content: Text('Lista de arquivos deletados!'),
                              ));
                    }
                  },
                  icon: const Icon(Icons.delete_forever),
                  iconSize: 37,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget _DadosBrother() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 400,
            color: Color.fromARGB(255, 239, 239, 239),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            color: Color.fromARGB(255, 171, 171, 171),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Text(
                "DOCUMENTOS IRMÃO(A)",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          //===========container dos Dados====================

          Container(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.only(left: 20, right: 10, top: 70, bottom: 3),
              child: Column(
                children: [
                  //=====frente RG============
                  Row(
                    children: [
                      TextButton.icon(
                          style: 0 == 0
                              ? ButtonStyle(
                                  foregroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.blue),
                                  // Outros estilos desejados
                                )
                              : ButtonStyle(
                                  foregroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.blue),
                                  // Outros estilos desejados para o estado desativado
                                ),
                          onPressed: frenteRgBrother.isEmpty
                              ? () {
                                  // ignore: unnecessary_null_comparison

                                  setState(() {
                                    Get.to(
                                      () => CameraCamera(
                                          onFile: (file) =>
                                              mostrarPreviewFrenteRgIrma(file)),
                                    );
                                  });
                                }
                              : null,
                          icon: Icon(Icons.camera_alt),
                          label: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              'Frente RG:',
                              style: TextStyle(fontSize: 20),
                            ),
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      /*   IconButton(
    onPressed: frenteRgMae.isNotEmpty
        ? () {
            setState(() {
              // ignore: list_remove_unrelated_type
              frenteRgMae.clear();
              arquivo.removeLast();
              print("arquivo removido");
              print(frenteRgMae.length);
              print(frenteRgMae);
              emitirAlerta();
            });
            // ignore: unnecessary_null_comparison
          }
        : null,
    icon: Icon(Icons.delete)),*/
                    ],
                  ),

                  //============================
                  //=============Verso RG============
                  Row(
                    children: [
                      TextButton.icon(
                          style: 0 == 0
                              ? ButtonStyle(
                                  foregroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.blue),
                                  // Outros estilos desejados
                                )
                              : ButtonStyle(
                                  foregroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.blue),
                                  // Outros estilos desejados para o estado desativado
                                ),
                          onPressed: versoRgBrother.isEmpty
                              ? () {
                                  // ignore: unnecessary_null_comparison

                                  setState(() {
                                    Get.to(
                                      () => CameraCamera(
                                          onFile: (file) =>
                                              mostrarPreviewVersoRgIrma(file)),
                                    );
                                  });
                                }
                              : null,
                          icon: Icon(Icons.camera_alt),
                          label: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              'Verso RG:',
                              style: TextStyle(fontSize: 20),
                            ),
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      /* IconButton(
    onPressed: versoRgPai.isNotEmpty
        ? () {
            setState(() {
              // ignore: list_remove_unrelated_type
              versoRgMae.clear();
              arquivo.removeLast();
              print("arquivo removido");
              print(versoRgMae.length);
              print(versoRgMae);
              emitirAlerta();
            });
          }
        : null,
    icon: Icon(Icons.delete)),*/
                    ],
                  ),
                  //===========================================
                  //======frente CPF============================
                  Row(
                    children: [
                      TextButton.icon(
                          style: 0 == 0
                              ? ButtonStyle(
                                  foregroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.blue),
                                  // Outros estilos desejados
                                )
                              : ButtonStyle(
                                  foregroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.blue),
                                  // Outros estilos desejados para o estado desativado
                                ),
                          onPressed: frenteCpfBrother.isEmpty
                              ? () {
                                  // ignore: unnecessary_null_comparison

                                  setState(() {
                                    Get.to(
                                      () => CameraCamera(
                                          onFile: (file) =>
                                              mostrarPreviewfrenteCpfIrma(
                                                  file)),
                                    );
                                  });
                                }
                              : null,
                          icon: Icon(Icons.camera_alt),
                          label: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              'Frente CPF:',
                              style: TextStyle(fontSize: 20),
                            ),
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      /*IconButton(
    onPressed: frenteCpfMae.isNotEmpty
        ? () {
            setState(() {
              // ignore: list_remove_unrelated_type
              frenteCpfMae.clear();
              arquivo.removeLast();
              print("arquivo removido");
              print(frenteCpfMae.length);
              print(frenteCpfMae);
              emitirAlerta();
            });
          }
        : null,
    icon: Icon(Icons.delete)),*/
                    ],
                  ),
                  //=====================================================
                  //============Carteira de Trabalho=======================
                  Row(
                    children: [
                      TextButton.icon(
                          style: 0 == 0
                              ? ButtonStyle(
                                  foregroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.blue),
                                  // Outros estilos desejados
                                )
                              : ButtonStyle(
                                  foregroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.blue),
                                  // Outros estilos desejados para o estado desativado
                                ),
                          onPressed: carteiraTrabalhoBrother.isEmpty
                              ? () {
                                  // ignore: unnecessary_null_comparison

                                  setState(() {
                                    Get.to(
                                      () => CameraCamera(
                                          onFile: (file) =>
                                              mostrarPreviewCarteiraDeClt_Irma(
                                                  file)),
                                    );
                                  });
                                }
                              : null,
                          icon: Icon(Icons.camera_alt),
                          label: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              'Carteira de trabalho:',
                              style: TextStyle(fontSize: 20),
                            ),
                          )),
                      SizedBox(
                        width: 1,
                      ),
                      /*  IconButton(
    onPressed: carteiraTrabalhoMae.isNotEmpty
        ? () {
            setState(() {
              // ignore: list_remove_unrelated_type
              carteiraTrabalhoMae.clear();
              arquivo.removeLast();
              print("arquivo removido");
              print(
                  carteiraTrabalhoMae.length);
              print(carteiraTrabalhoMae);
              emitirAlerta();
            });
          }
        : null,
    icon: Icon(Icons.delete)),*/
                    ],
                  ),
                  //==========================================
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ignore: unused_element
  Widget _actionBottum() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 700,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ButtonStyle(foregroundColor:
                        MaterialStateProperty.resolveWith<Color>((states) {
                      return Colors.white;
                    }), backgroundColor:
                        MaterialStateProperty.resolveWith<Color>((states) {
                      return Colors.green;
                    })),
                    onPressed: arquivo.isNotEmpty
                        ? () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) =>
                                      MostrarIamgens(imagens: arquivo),
                                  fullscreenDialog: true),
                            )
                        : null,
                    // ignore: prefer_const_constructors
                    child: Text('Visualizar')),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                    style: ButtonStyle(foregroundColor:
                        MaterialStateProperty.resolveWith<Color>((states) {
                      return Colors.white;
                    }), backgroundColor:
                        MaterialStateProperty.resolveWith<Color>((states) {
                      return Colors.green;
                    })),
                    onPressed: () {
                      if (arquivo.isNotEmpty) {
                        setState(() {
                          frenteRG.clear();
                          versoRG.clear();
                          arquivo.clear();
                        });
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text("Fechar"))
                                  ],
                                  title: Text('Aviso de arquivos deletados'),
                                  contentPadding: EdgeInsets.all(20.0),
                                  content: Text('Lista de arquivos deletados!'),
                                ));
                      }
                    },
                    child: Text('Criar novo')),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stack(
        children: [
          _body(),
          // _actionBottum(),
          // _appBar(),

//=============================================
        ],
      ),
    );
  }
}
