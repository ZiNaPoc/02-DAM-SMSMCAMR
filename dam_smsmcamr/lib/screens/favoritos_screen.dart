import 'package:flutter/material.dart';

class FavoritosScreen extends StatelessWidget{
  const FavoritosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: const Text("Favoritos"),
      backgroundColor: const Color.fromARGB(255, 68, 138, 255),
      ),
      body:const Center(
        child: Text('Pantalla de Favoritos \nAgrega un platillo a "Favoritos" para verlo aqui',
        style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)
        ),
      ),
    );
  }
}