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

  factory Registros.fromJson(Map<String,dynamic> json) {
    
    return Registros(
      carro: json['Carro'] != null ? Carro.fromJson(json['Carro']) : null,
      servicio: json['Servicio'] != null ? Servicio.fromJson(json['Servicio']) : null,
      nombre: json['nombre'],
      apellido: json['apellido'],
      cel: json['cel'],
      licencia: json['licencia'],
      image: json['image'],
    );
  }
}
