import 'dart:convert';

import 'package:firebase_database/firebase_database.dart';
import 'package:project_mobile/Entities/registros.dart';
import 'package:project_mobile/Entities/response_firebase.dart';

class FirebaseConnection {
  static final FirebaseDatabase _database = FirebaseDatabase.instance;
  DatabaseReference instanceFirebase() {
    return _database.ref('/Registros');
  }

  //Method to get data from firebase
  Future<ResponseFirebase> getData() async {
    try {
      DatabaseReference reference = instanceFirebase();
      DataSnapshot response = await reference.get();
      final encode = json.encode(response.value);
      final decode = json.decode(encode);
      print(decode.runtimeType);
      final data = ResponseFirebase.fromJson(decode.values.toList());
      return data;
    } catch (e) {
      rethrow;
    }
  }
}
