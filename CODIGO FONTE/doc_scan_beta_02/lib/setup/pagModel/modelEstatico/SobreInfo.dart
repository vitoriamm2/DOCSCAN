import 'package:flutter/material.dart';

class SobreInfo extends StatelessWidget {
  const SobreInfo({super.key});

  Widget _body() {
    return Scaffold(
      /* appBar: AppBar(
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
              const EdgeInsets.only(top: 150, left: 20, right: 20, bottom: 30),
          child: Column(
            children: [
              Image.asset(
                'assets/explicar.png',
                color: Colors.green,
                width: 150,
                height: 150,
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  'Bem-vindo ao DocScan! ',
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  'Seu app de organização de documentos para o PNAES, de forma fácil e prática.',
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
                height: 25,
              ),

              Center(
                child: Text(
                  'Vamos começar? \n Clique no botão “continuar”',
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text("________________________________________________"),
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
            padding: const EdgeInsets.only(top: 520),
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
                  Navigator.of(context).pushReplacementNamed('telaExigencias');
                },
                child: Text(
                  "CONTINUAR",
                  style: TextStyle(color: Colors.green),
                ),
              ),

              /*ElevatedButton(
                  style: ButtonStyle(foregroundColor:
                      MaterialStateProperty.resolveWith<Color>((states) {
                    return Colors.white;
                  }), backgroundColor:
                      MaterialStateProperty.resolveWith<Color>((states) {
                    return Color(0xFF4CAF50);
                  })),
                  onPressed: () {
                    // Navigator.of(context)
                    ///   .pushReplacementNamed('telaExigencias');
                  },
                  child: Text("CONTINUAR!") ), */
            ),
          ),
        ],
      ),
    );
  }
}
