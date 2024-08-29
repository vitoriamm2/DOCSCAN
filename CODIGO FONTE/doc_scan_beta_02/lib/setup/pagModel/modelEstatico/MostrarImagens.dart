import 'dart:io';

//import 'package:camera/camera.dart';
import 'package:doc_scan_beta_02/setup/pagModel/modelEstatico/PDFView.dart';

//import 'package:doc_scan/setup/config/rodaDeNavAlter.dart';
//import 'package:doc_scan/setup/model/home_cap_foto.dart';

//import 'package:doc_scan/app/model/home_page.dart';
import 'package:flutter/material.dart';

//import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import 'package:path_provider/path_provider.dart';
//import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

// ignore: must_be_immutable
class MostrarIamgens extends StatelessWidget {
  final List<File?> imagens;
  const MostrarIamgens({super.key, required this.imagens});

  Widget _body() {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'DOCUMENTOS ESCANIADOS',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.green,
        ),

        //==================================================
        //

        //========================================================

        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              for (File? imagem in imagens)
                imagem != null
                    ? Container(
                        margin: EdgeInsets.all(8),
                        child: Image.file(
                          File(imagem.path),
                          fit: BoxFit.contain,
                          //color: Colors.amber,
                        ),
                      )
                    : SizedBox.shrink(),
            ],
          ),
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
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 710),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
                child: Container(
                  color: Colors.green,
                  width: 900,
                  height: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          style: ButtonStyle(foregroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                                  (states) {
                            return Colors.green;
                          }), backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                                  (states) {
                            return Colors.white;
                          })),
                          onPressed: () {
                            print('GERANDO PDF');

                            Future<void> convertImagesToPdf(
                                List<File?> imagens) async {
                              final pdf = pw.Document();

                              for (File? imagem in imagens) {
                                if (imagem != null) {
                                  final image = pw.MemoryImage(
                                      File(imagem.path).readAsBytesSync());
                                  pdf.addPage(
                                      pw.Page(build: (pw.Context context) {
                                    return pw.Center(child: pw.Image(image));
                                  }));
                                }
                              } //getExternalStorageDirectory()

                              final outputDirectory =
                                  await getExternalStorageDirectory();

                              if (outputDirectory != null) {
                                final outputFile = File(
                                    "${outputDirectory.path}/DocScanDados.pdf");
                                await outputFile.writeAsBytes(await pdf.save());
                                print(outputFile);
                                Navigator.push(
                                  (context),
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        PDFView(outputFile: outputFile),
                                  ),
                                );

                                // Agora você pode usar o arquivo 'output.pdf' conforme necessário
                              }
                            }

                            convertImagesToPdf(imagens);
                          },
                          // ignore: prefer_const_constructors
                          child: Text('GERAR PDF')),
                      SizedBox(
                        width: 10,
                      ),
                      /* IconButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacementNamed('/');
                        },
                        icon: const Icon(Icons.new_label),
                        iconSize: 40,
                        color: Colors.white,
                      ),*/

                      ElevatedButton(
                          style: ButtonStyle(foregroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                                  (states) {
                            return Colors.white;
                          }), backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                                  (states) {
                            return Colors.green;
                          })),
                          onPressed: () {
                            Navigator.of(context).pushReplacementNamed('/');
                          },
                          child: Text("CRIAR NOVO DOCUMENTO")),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
