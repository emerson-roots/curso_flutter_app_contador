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
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  void decrement() {
    setState(() {
      count--;
    });
  }

  void increment() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/sorveteria.jpg'),
                fit: BoxFit.cover
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Cliente saiu ou entrou?",
              style: TextStyle(
                fontSize: 35,
                color: Colors.yellow,
                fontWeight: FontWeight.w800,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40),
              child: Text(
                '$count',
                style: const TextStyle(
                  fontSize: 100,
                  color: Colors.greenAccent,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.cyan,
                    fixedSize: const Size(100, 100),
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  onPressed: decrement,
                  child: const Text(
                    "Saiu",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 32,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.pink,
                    fixedSize: const Size(100, 100),
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  onPressed: increment,
                  child: const Text(
                    "Entrou",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

