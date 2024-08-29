import 'package:flutter/material.dart';

class HomeCriarDoc extends StatefulWidget {
  const HomeCriarDoc({super.key});

  @override
  State<HomeCriarDoc> createState() => _HomeCriarDocState();
}

class _HomeCriarDocState extends State<HomeCriarDoc> {
  Widget _body() {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,

      // ignore: prefer_const_constructors
      child: Padding(
        // ignore: prefer_const_constructors
        padding: EdgeInsets.only(top: 150, left: 20, right: 20, bottom: 30),
        child: Column(
          children: [
            Image.asset(
              'assets/scan.png',
              width: 300,
              height: 300,
            ),
            // ignore: prefer_const_constructors
            SizedBox(height: 100),

            ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: BorderSide(color: Colors.white),
                    ),
                  ),
                  backgroundColor:
                      MaterialStateProperty.resolveWith<Color>((states) {
                    return Color.fromARGB(255, 7, 151, 11);
                  })),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('telaSobre');
              },
              child: Text(
                "CRIAR DOCUMENTO",
                style: TextStyle(color: Colors.white),
              ),
            ),

            // ignore: prefer_const_constructors
            SizedBox(height: 20),
            // ignore: prefer_const_constructors
            Text(
              'v:1.0',
              // ignore: prefer_const_constructors Navigator.of(context).pushReplacementNamed('telaSobre');
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget backgroundDegrader() {
    return Container(
      color: Color.fromARGB(255, 7, 151, 11),
      // ignore: prefer_const_constructors
      /*
      decoration: BoxDecoration(
          
        // ignore: prefer_const_constructors
        gradient: LinearGradient(
          // ignore: prefer_const_literals_to_create_immutables
          colors: [
            // ignore: prefer_const_constructors
            Color.fromARGB(255, 1, 111, 14),
            // ignore: prefer_const_constructors
            Color.fromRGBO(3, 209, 27, 1),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomLeft,
        ),
       
          ), */
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          backgroundDegrader(),
          _body(),
        ],
      ),
    );
  }
}
