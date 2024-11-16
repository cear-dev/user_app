import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> userData =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    return Scaffold(
      appBar: AppBar(title: Text('Perfil')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nombre: ${userData['name']}', style: TextStyle(fontSize: 18)),
            Text('Edad: ${userData['age']}', style: TextStyle(fontSize: 18)),
            Text('Ocupación: ${userData['occupation']}',
                style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(context, ModalRoute.withName('/'));
              },
              child: Text('Regresar a Inicio'),
            ),
          ],
        ),
      ),
    );
  }
}
