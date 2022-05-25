import 'package:flutter/material.dart';

class CountColor extends StatefulWidget {
  const CountColor({Key? key}) : super(key: key);

  @override
  State<CountColor> createState() => _CountColorState();
}

class _CountColorState extends State<CountColor> {
  int count = 0;
  Color _color = Colors.blue;
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
            Text(
              "Number push",
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(color: _color),
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
          cambiarColor();
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

  void cambiarColor() {
    setState(() {
      _color = count % 2 == 0 ? Colors.redAccent.shade700 : Colors.deepPurple;
    });
  }
}
