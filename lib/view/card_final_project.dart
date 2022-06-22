import 'package:flutter/material.dart';
import 'package:jpla_project/entities/registros.dart';
import 'package:jpla_project/view/perfil_registro.dart';

class CardFinal extends StatelessWidget {
  String photo = "";
  String name = "";
  String last_name = "";
  Registros registros1;

  CardFinal(
      {Key? key,
      required this.photo,
      required this.name,
      required this.last_name,
      required this.registros1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        color: Color.fromARGB(255, 226, 223, 241),
        elevation: 2,
        child: Container(
          padding: EdgeInsets.only(left: 30),
          child: SizedBox(
            width: 300,
            height: 120,
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: Image.network(photo).image,
                  radius: 30,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Text(
                        name, 
                        style: const TextStyle(fontWeight: FontWeight.bold, 
                        color: Colors.black, fontSize: 16),
                      ),
                      Text(
                        last_name, 
                        style: const TextStyle(fontWeight: FontWeight.bold, 
                        color: Colors.black, fontSize: 16),
                      ),
                    ],
                  )),
                IconButton(
                  icon: const Icon(
                    Icons.check,
                    textDirection: TextDirection.rtl,
                    color: Color.fromARGB(255, 3, 4, 97),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                PerfilRegistro(registros: registros1)));
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
