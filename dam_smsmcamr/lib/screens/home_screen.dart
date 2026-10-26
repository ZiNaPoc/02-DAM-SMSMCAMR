import 'package:flutter/material.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});

  @override
  Widget build(BuildContext context){

      void _mostrarMensajeTemporal(){
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content:
      Text ("Aqui sucedera algo:)")
      )
    );
  }

    return Scaffold(
      appBar: AppBar(
        title: Text("Platillos Ancestrales de Quintana Roo"),
        backgroundColor: const Color.fromARGB(255, 20, 11, 141),
      ),
      body: const Center(
        child: Text("Bienvenidos a la tienda de platillos ancestrales de Quintana Roo",)
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _mostrarMensajeTemporal,
        backgroundColor: const Color.fromARGB(255, 9, 1, 58),
        child: const Icon(Icons.map, color: Colors.white),
      ),
    );
  }
}