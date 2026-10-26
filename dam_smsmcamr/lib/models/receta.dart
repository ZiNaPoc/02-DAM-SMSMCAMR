class Receta {
  final int id;
  final String nombre;
  final String imagenUrl;
  final List<String> ingredientes;
  final List<String> instrucciones;
  final String dificultad;
  final int tiempoPreparacion;

  const Receta({
    required this.id,
    required this.nombre,
    required this.imagenUrl,
    required this.ingredientes,
    required this.instrucciones,
    required this.dificultad,
    required this.tiempoPreparacion,
  });

  factory Receta.fromJson(Map<String, dynamic> json) {
    return Receta(
      id: json['id'],
      nombre: json['name'],
      imagenUrl: json['image'],
      ingredientes: List<String>.from(json['ingredients']),
      instrucciones: List<String>.from(json['instructions']),
      dificultad: json['difficulty'],
      tiempoPreparacion: json['prepTimeMinutes'],
    );
  }
}