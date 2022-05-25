import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 7, 2, 53),
        title: const Text('Andres Molinares'),
      ),
      body: const Center(child: Text("This is the home")),
    );
  }
}
