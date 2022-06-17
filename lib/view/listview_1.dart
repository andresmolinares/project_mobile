import 'package:flutter/material.dart';
import 'package:project_mobile/Entities/registros.dart';

import '../Entities/response_firebase.dart';
import '../domain/firebase_connection.dart';

class ListView1 extends StatefulWidget {
  const ListView1({Key? key}) : super(key: key);

  @override
  State<ListView1> createState() => _ListView1();
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
        return ListTile(
            leading: CircleAvatar(
              backgroundImage: Image.network(registros[index].image!).image,
            ),
            title: Text(
                '${registros[index].nombre!} ${registros[index].apellido!}'),
            onTap: () => showDialog<Image>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                      title: Text(
                          '${registros[index].nombre!} ${registros[index].apellido!}'),
                      content: Image(
                          image: Image.network(registros[index].image!).image),
                    )));
      },
    ));
  }
}
