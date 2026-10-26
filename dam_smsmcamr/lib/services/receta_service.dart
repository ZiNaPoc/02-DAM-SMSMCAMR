import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:dam_smsmcamr/models/receta.dart';

class RecetaService {
  static const String _baseUrl = 'https://dummyjson.com/recipes';

  Future<List<Receta>> obtenerRecetas() async {
    final Uri url = Uri.parse(_baseUrl);
    final http.Response respuesta = await http.get(url);

    if (respuesta.statusCode == 200) {
      final Map<String, dynamic> datos = jsonDecode(respuesta.body);
      final List<dynamic> listaRecetas = datos['recipes'];

      return listaRecetas
          .map((recetaJson) => Receta.fromJson(recetaJson))
          .toList();
    } else {
      throw Exception('Error al obtener las recetas: ${respuesta.statusCode}');
    }
  }
}