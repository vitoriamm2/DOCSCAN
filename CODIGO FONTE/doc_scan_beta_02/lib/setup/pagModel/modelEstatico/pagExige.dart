import 'package:flutter/material.dart';

class PagExige extends StatelessWidget {
  const PagExige({super.key});

  Widget _body() {
    return Scaffold(
      /*  appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text(
          'Doc Scan / Sobre de explicação',
          // ignore: prefer_const_constructors
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        backgroundColor: Colors.green,
      ),*/
      body: Center(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 95, left: 20, right: 20, bottom: 30),
          child: Column(
            children: [
              Image.asset(
                'assets/documentos.png',
                color: Colors.green,
                width: 150,
                height: 150,
              ),
              SizedBox(
                height: 50,
              ),
              Column(
                children: [
                  Center(
                    child: Text(
                      'Posicione o documento e certifique-se de estar em um ambiente bem iluminado e toque no botão "Escanear". \n  ',
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: Text(
                      "Lembre-se de ter em mãos todos os documentos necessários, como por exemplo:",
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.green,
                          fontFamily: 'Roboto',
                          fontSize: 15),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "> RG,\n> CPF,\n> Carteira de trabalho\n> Comprovante de residência.\nDe todos os integrantes/membros da família",
                    style: TextStyle(
                        color: Colors.green,
                        fontFamily: 'Roboto',
                        fontSize: 15),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),

              Text(
                'Vamos começar a organizar seus documentos de forma fácil e prática.',
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),

              //=============================================
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _body(),

          //===============Botão tirar foto========================

          Padding(
            padding: const EdgeInsets.only(top: 650),
            child: Center(
              child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: BorderSide(color: Colors.green),
                      ),
                    ),
                    backgroundColor:
                        MaterialStateProperty.resolveWith<Color>((states) {
                      return Color.fromARGB(255, 255, 255, 255);
                    })),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('criar');
                },
                child: Text(
                  "CONTINUAR",
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
