import 'dart:convert';

import 'package:firebase_database/firebase_database.dart';
import 'package:jpla_project/entities/registros.dart';
import 'package:jpla_project/entities/response_firebase.dart';

class FirebaseConnection {
  static final FirebaseDatabase _database = FirebaseDatabase.instance;

  DatabaseReference instanceFirebase() {
    return _database.ref('/Registros');
  }

  Future<List> getRegistros() async {
    List<Registros> mylist = [];
    try {
      DatabaseReference _registros = instanceFirebase();
      DataSnapshot response = await _registros.get();
      String jsoncod = json.encode(response.value);
      Map<String, dynamic> jsondecode = json.decode(jsoncod);
      jsondecode.forEach(((key, value) {
        Registros rg = Registros.fromJson(value);
        mylist.add(rg);
      }));
      return mylist;
    } catch (e) {
      rethrow;
    }
  }
}
