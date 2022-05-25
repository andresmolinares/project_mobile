import 'package:flutter/material.dart';

class CountScreen extends StatefulWidget {
  const CountScreen({Key? key}) : super(key: key);

  @override
  State<CountScreen> createState() => _CountScreenState();
}

class _CountScreenState extends State<CountScreen> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    const sizeText = TextStyle(fontSize: 24);

    return Scaffold(
      // backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 7, 2, 53),
        title: const Text('Andres Molinares'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Number push",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              '$count',
              style: sizeText,
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          incrementar();
          showMessage();
        },
      ),
    );
  }

  void showMessage() {
    print("Pressed");
  }

  void incrementar() {
    setState(() {
      count++;
    });
  }
}
