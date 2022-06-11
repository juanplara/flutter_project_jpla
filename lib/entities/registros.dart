import 'package:jpla_project/entities/carro.dart';
import 'package:jpla_project/entities/servicio.dart';

class Registros {
  final Carro? carro;
  final Servicio? servicio;
  final String? nombre;
  final String? apellido;
  final int? cel;
  final String? licencia;
  final String? image;

  Registros({
    this.carro,
    this.servicio,
    this.nombre,
    this.apellido,
    this.cel,
    this.licencia,
    this.image,
  });

  factory Registros.fromJson(List<dynamic> json) {
    return Registros(
      carro: json[0] != null ? Carro.fromJson(json[0]) : null,
      servicio: json[1] != null ? Servicio.fromJson(json[1]) : null,
      nombre: json[2] as String,
      apellido: json[3] as String,
      cel: json[4] as int,
      licencia: json[5] as String,
      image: json[6] as String,
    );
    /* return Registros(
      carro: json['carro'] != null ? Carro.fromJson(json['carro']) : null,
      servicio: json['servicio'] != null ? Servicio.fromJson(json['servicio']) : null,
      nombre: json['nombre'],
      apellido: json['apellido'],
      cel: json['cel'],
      licencia: json['licencia'],
      image: json['image'],
    ); */
  }
}
