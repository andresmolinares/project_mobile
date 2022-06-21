import 'package:flutter/material.dart';
import 'package:project_mobile/Entities/registros.dart';

import '../Entities/response_firebase.dart';
import '../domain/firebase_connection.dart';

class ListView1 extends StatefulWidget {
  const ListView1({Key? key}) : super(key: key);

  @override
  State<ListView1> createState() => _ListView1();
}

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Card(
          color: Color.fromARGB(193, 224, 227, 230),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          child: SizedBox(
            width: 370,
            height: 120,
            child: Center(child: Text('Clean Card')),
          )),
    );
  }
}

class _ListView1 extends State<ListView1> {
  List<Registros> registros = [];
  FirebaseConnection firebaseConnection = FirebaseConnection();
  late ResponseFirebase responseFirebase;

  Future<void> callDatabase() async {
    final responseFirebase = await firebaseConnection.getData();
    setState(() {
      registros = responseFirebase.registros!;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (registros.isEmpty) {
      callDatabase();
    }

    return Scaffold(
        body: ListView.builder(
      itemCount: registros.length,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return const CustomCard();
      },
    ));
  }
}
