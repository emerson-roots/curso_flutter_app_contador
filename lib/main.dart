import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// config para hot reload
// seção 10 aula 73
// atalho para criar widget  = "stless"
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Colors.black,
        alignment: Alignment.center,
        child: const Text('Olá mundo!!'),
      ),
    );
  }
}

