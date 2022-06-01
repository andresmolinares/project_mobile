import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  const Contador({Key? key}) : super(key: key);

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int count = 10;

  void increasefn() {
    setState(() {
      count++;
    });
  }

  void decreasefn() {
    setState(() {
      count--;
    });
  }

  void resetfn() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    const sizeText = TextStyle(fontSize: 24);

    return Scaffold(
        // backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 7, 2, 53),
          title: const Text('Home'),
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
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingCustomW(
            increase: increasefn, decrease: decreasefn, reset: resetfn));
  }
}

class FloatingCustomW extends StatelessWidget {
  final Function increase;
  final Function decrease;
  final Function reset;

  const FloatingCustomW({
    Key? key,
    required this.increase,
    required this.decrease,
    required this.reset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        FloatingActionButton(
          child: const Icon(Icons.remove),
          onPressed: () => decrease(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.replay),
          onPressed: () => reset(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () => increase(),
        ),
      ],
    );
  }
}
