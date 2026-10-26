import 'package:flutter/material.dart';

class AcercadeScreen extends StatelessWidget{
  const AcercadeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
        title: Text("Acerca de:"),
        backgroundColor: const Color.fromARGB(255, 68, 138, 255),
      ),
      body:const Center(
        child: Text("Equipo 1 conformado por: \n -Aviles Cruz Oswaldo Said \n -Chi Rodríguez Karla Jhoana \n -Martín Dzib Angi Medina \n -Miranda Manuel Itzel Nicte-ha \n -Miam Santos Joshua Fernando\n -Rocha Vallejo Jessica \n -Sánches Mena Leonardo \n -Santos Chay Brenda Naomy ",
        style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),)
        ),
      );
  }
}