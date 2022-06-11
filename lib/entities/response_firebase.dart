import 'package:jpla_project/entities/registros.dart';

class ResponseFirebase {

  List<Registros>? registros;

  ResponseFirebase({
    this.registros,
  });

  ResponseFirebase.fromJson(List<dynamic> json) {
    registros = json.map((e) => Registros.fromJson(e)).toList();
    /* if (json['registros'] != null) {
      registros = <Registros>[];
      json['registros'].forEach((v) {
        registros!.add(Registros.fromJson(v));
      });
    } */
  }

  get onChildAdded => null;
}