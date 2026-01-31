import 'package:flutter/material.dart';

class RegistrationSuccessView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.check_circle_outline, color: Colors.green, size: 100),
            const SizedBox(height: 20),
            const Text(
              "¡Registro Exitoso!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Bienvenido a AuthApp, Yunny Cuevas. Tu cuenta ha sido creada siguiendo los estándares de seguridad y accesibilidad.",
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Navegar al Home
              },
              child: const Text("Comenzar ahora"),
            ),
          ],
        ),
      ),
    );
  }
}
