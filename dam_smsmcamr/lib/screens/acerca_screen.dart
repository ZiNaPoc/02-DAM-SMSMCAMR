import 'package:flutter/material.dart';

class AcercadeScreen extends StatelessWidget {
  const AcercadeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Acerca de:"),
        backgroundColor: const Color.fromARGB(255, 68, 138, 255),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Equipo conformado por:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Text("- Aviles Cruz Oswaldo Said"),
            Text("- Chi Rodríguez Karla Jhoana"),
            Text("- Martín Dzib Angi Medina"),
            Text("- Miranda Manuel Itzel Nicte-ha"),
            Text("- Miam Santos Joshua Fernando"),
            Text("- Rocha Vallejo Jessica"),
            Text("- Sánches Mena Leonardo"),
            Text("- Santos Chay Brenda Naomy"),
          ],
        ),
      ),
    );
  }
}