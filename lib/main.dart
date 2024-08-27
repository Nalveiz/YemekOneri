import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          backgroundColor: Colors.amber,
          centerTitle: true,
          title: Text(
            "BUGÜN NE YESEM ?",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: Yemek(),
      ),
    );
  }
}

// ignore: must_be_immutable
class Yemek extends StatefulWidget {
  const Yemek({super.key});

  @override
  State<Yemek> createState() => _YemekState();
}

class _YemekState extends State<Yemek> {
  int corbaNo = 1;

  int yemekNo = 1;

  int tatliNo = 1;

  List<String> corbaAdlari = [
    "Mercimek Çorbası",
    "Tarhana Çorbası",
    "Tavuksuyu Çorbası",
    "Düğün Çorbası",
    "Yoğurt Çorbası"
  ];
  List<String> yemekAdlari = [
    "Karnıyarık",
    "Mantı",
    "Kurufasulye",
    "İçli Köfte",
    "Fırın Levrek"
  ];
  List<String> tatliAdlari = [
    "Kadayıf",
    "Baklava",
    "Sütlaç",
    "Kazandibi",
    "Dondurma"
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                ),
                onPressed: () {
                  randommenu();
                },
                child: Image.asset("images/corba_$corbaNo.jpg"),
              ),
            ),
          ),
          Text(
            corbaAdlari[corbaNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            width: 260,
            child: Divider(
              height: 5,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.deepPurple),
                onPressed: () {
                  randommenu();
                },
                child: Image.asset("images/yemek_$yemekNo.jpg"),
              ),
            ),
          ),
          Text(
            yemekAdlari[yemekNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            width: 260,
            child: Divider(
              height: 5,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                  ),
                  onPressed: () {
                    randommenu();
                  },
                  child: Image.asset("images/tatli_$tatliNo.jpg")),
            ),
          ),
          Text(
            tatliAdlari[tatliNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            width: 260,
            child: Divider(
              height: 5,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  void randommenu() {
    setState(() {
      yemekNo = Random().nextInt(5) + 1;
      corbaNo = Random().nextInt(5) + 1;
      tatliNo = Random().nextInt(5) + 1;
    });
  }
}
