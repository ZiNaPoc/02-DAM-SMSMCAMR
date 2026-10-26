import 'package:flutter/material.dart';


class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: const Text("Favotitos")
      ),
      body: const Center(
        child: Text("Pantalla de Favoritos"),
      ),
    );
  }
}