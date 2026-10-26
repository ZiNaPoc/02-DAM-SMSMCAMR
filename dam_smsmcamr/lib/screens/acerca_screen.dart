


class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});

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