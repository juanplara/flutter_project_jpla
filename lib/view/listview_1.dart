import 'package:flutter/material.dart';
import 'package:jpla_project/domain/firebase_connection.dart';
import 'package:jpla_project/entities/registros.dart';
import 'package:jpla_project/view/card_final_project.dart';

class ListView1 extends StatefulWidget {
  const ListView1({Key? key}) : super(key: key);

  @override
  State<ListView1> createState() => _ListView1State();
}

class _ListView1State extends State<ListView1> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
        title: const Text('Listado de usuarios'),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.white,
        body: FutureBuilder(
          future: FirebaseConnection().getRegistros(),
          builder:
              (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
            List registros = snapshot.data ?? [];
            return ListView(
              children: [
                for(Registros r in registros) 
                  CardFinal(
                    photo: "${r.image}",
                    name: "${r.nombre}",
                    last_name: " ${r.apellido}",
                    registros1: r,
                  ),
              ],
            );
          },
        )
        );
  }
}
