import 'package:firebase_database/firebase_database.dart';
import 'package:jpla_project/entities/registros.dart';
import 'package:jpla_project/entities/response_firebase.dart';

class FirebaseConnection {
  static final FirebaseDatabase _database = FirebaseDatabase.instance;

  DatabaseReference instanceFirebase() {
    return _database.ref('/Registros');
  }

  Future<ResponseFirebase> getRegistros() async {
    try {
      DatabaseReference _registros = instanceFirebase();
      DataSnapshot response = await _registros.get();
      final registers = ResponseFirebase.fromJson(response.value as List);
      return registers;
    } catch (e) {
      rethrow;
    }
  }
}
