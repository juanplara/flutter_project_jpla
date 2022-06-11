import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

/* void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  callDatabase();
  runApp(MyApp());
} */

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}

void callDatabase() {
    /* DatabaseReference reference = FirebaseDatabase.instance.ref();
    DatabaseReference starCountRef =
        FirebaseDatabase.instance.ref('/Registros');
    starCountRef.onValue.listen((event) {
      final data = event.snapshot.value;
      print(data.toString());
    }); */

    /* final reg = FirebaseDatabase.instance.ref();
    final obj = reg.child('/Registros').get();
    print(obj.value); */

    DatabaseReference starCountRef =
    FirebaseDatabase.instance.ref('Registros/2345600');
    starCountRef.onValue.listen((event) {
      final data = event.snapshot.value;
      print(data.toString());
    });
  }
