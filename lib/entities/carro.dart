class Carro {
  final String? color;
  final String? marca;
  final int? modelo;
  final String? placa;

  Carro({
    this.color,
    this.marca,
    this.modelo,
    this.placa,
  });

  factory Carro.fromJson(List<dynamic> json) {
    return Carro(
      color: json[0] as String,
      marca: json[1] as String,
      modelo: json[2] as int,
      placa: json[3] as String,
    );
    /* return Carro(
      color: json['color'],
      marca: json['marca'],
      modelo: json['modelo'],
      placa: json['placa'],
    ); */
  }
}
