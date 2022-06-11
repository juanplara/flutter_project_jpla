class Servicio {
  
  final String? lavado;
  final String? polish;
  final String? tapiceria;

  Servicio({
    this.lavado,
    this.polish,
    this.tapiceria,
  });

  factory Servicio.fromJson(List<dynamic> json) {
    return Servicio(
      lavado: json[0] as String,
      polish: json[1] as String,
      tapiceria: json[2] as String,
    );
    /* return Servicio(
      lavado: json['lavado'],
      polish: json['polish'],
      tapiceria: json['tapiceria'],
    ); */
  }
}
