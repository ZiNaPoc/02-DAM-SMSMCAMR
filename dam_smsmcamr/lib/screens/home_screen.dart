import 'package:dam_smsmcamr/models/receta.dart';
import 'package:dam_smsmcamr/services/receta_service.dart';
import 'package:dam_smsmcamr/widgets/card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 final RecetaService _recetaService = RecetaService();
  late Future<List<Receta>> _futureRecetas;

  @override
  @override
  void initState() {
    super.initState();
    _futureRecetas = _recetaService.obtenerRecetas();
  }

  void _mostrarMensajeTemporal() {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Aqui sucedera algo:)")));
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Platillos Ancestrales de Quintana Roo"),
        backgroundColor: const Color.fromARGB(255, 68, 138, 255),
      ),
      body: SingleChildScrollView(
      padding: EdgeInsets.all(16),        
      child: Column(
          children: [
            Text(
              "Bienvenido a la aplicación de Platillos Ancestrales de Quintana Roo",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            FutureBuilder<List<Receta>>(
              future: _futureRecetas,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (snapshot.hasError) {
                  return Center(child: Text("Error: ${snapshot.data}"));
                }
                final productos = snapshot.data!;
                return GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 14,
                    crossAxisSpacing: 14,
                  ),
                  itemCount: productos.length,
                  itemBuilder: ((context, index) {
                    final receta = productos[index];
                    return RecetaCard(receta: receta);
                  }),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _mostrarMensajeTemporal,
        backgroundColor: const Color.fromARGB(255, 9, 1, 58),
        child: const Icon(Icons.map, color: Colors.white),
      ),
    );
  }
}
