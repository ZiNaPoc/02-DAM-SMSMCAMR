import 'package:flutter/material.dart';
class AcercaScreen extends StatelessWidget {
  const AcercaScreen({super.key});

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: const Text("Acerca de")
      ),
      body: const Center(
        child: Text("Pantalla de Acerca de"),
      ),
    );
  }
}