// ignore_for_file: deprecated_member_use, file_names, prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last

import 'dart:io';

//import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
//import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';

// ignore: must_be_immutable
class PDFView extends StatelessWidget {
  File outputFile;

  PDFView({super.key, required this.outputFile});

  Widget _body() {
    return MaterialApp(
      home: Scaffold(
        body: SizedBox(
          child: Padding(
            padding: EdgeInsets.only(top: 150, left: 20, right: 20, bottom: 30),
            child: Container(
              child: Column(children: [
                Center(
                  child: Image.asset(
                    'assets/like.png',
                    width: 200,
                    height: 200,
                    color: Colors.green,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Center(
                  child: Text(
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.center,
                    "Arquivo pdf gerado com sucesso!",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: ElevatedButton(
                    onPressed: () async {
                      XFile xFile = XFile(outputFile.path);
                      Share.shareXFiles([xFile], text: "Compartilhar PDF");
                    },
                    child: Text("COMPARTILHAR"),
                    style: ButtonStyle(foregroundColor:
                        MaterialStateProperty.resolveWith<Color>((states) {
                      return Colors.white;
                    }), backgroundColor:
                        MaterialStateProperty.resolveWith<Color>((states) {
                      return Colors.green;
                    })),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Container(),
              ]),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _body(),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 400),
            child: ElevatedButton(
              onPressed: () async {
                Navigator.of(context).pushReplacementNamed('/');
              },
              child: Text("CRIAR UM NOVO DOCUMENTO"),
              style: ButtonStyle(foregroundColor:
                  MaterialStateProperty.resolveWith<Color>((states) {
                return Colors.white;
              }), backgroundColor:
                  MaterialStateProperty.resolveWith<Color>((states) {
                return Colors.green;
              })),
            ),
          ),
        ),
      ],
    );
  }
}
