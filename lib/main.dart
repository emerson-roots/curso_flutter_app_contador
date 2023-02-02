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
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  void decrement() {
    print('Decrement');
  }

  void increment() {
    print('Increment');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Pode entrar",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.w800,
            ),
          ),
          const Text(
            "0",
            style: TextStyle(
              fontSize: 100,
              color: Colors.white,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: decrement,
                child: Text(
                  "Saiu",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
              TextButton(
                onPressed: increment,
                child: Text(
                  "Entrou",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
