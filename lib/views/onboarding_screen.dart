// Archivo: onboarding_screen.dart
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Center(child: Text("Bienvenido a AuthApp"))),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(onPressed: () {}, child: Text("SALTAR")),
              ElevatedButton(onPressed: () {}, child: Text("SIGUIENTE")),
            ],
          ),
          // Indicador de puntos (dots)
        ],
      ),
    );
  }
}
