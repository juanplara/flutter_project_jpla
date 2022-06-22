import 'package:flutter/material.dart';
import 'package:jpla_project/entities/carro.dart';
import 'package:jpla_project/entities/registros.dart';

class PerfilRegistro extends StatelessWidget {

  static const TextStyle optionTitleStyle = TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black,);
  Registros registros;

  PerfilRegistro({Key? key, required this.registros}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
        title: Text("${registros.nombre} ${registros.apellido}"),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.white,
        body: Column(
          children: 
            [Container(
              padding: EdgeInsets.all(30),
              child: Center(
                child: Image.network("${registros.image}"),
              ),
            ),
            Column(
              children: [
                Text("${registros.carro}", style: optionTitleStyle,),
                Text("${registros.servicio}", style: optionTitleStyle),
                Text("${registros.nombre} ${registros.apellido}", style: optionTitleStyle),
                Text("${registros.licencia}", style: optionTitleStyle)
              ],
            )
          ],
        ),
      ),
    );
  }
}
