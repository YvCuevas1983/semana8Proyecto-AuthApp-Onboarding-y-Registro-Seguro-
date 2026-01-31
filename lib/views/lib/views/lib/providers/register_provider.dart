// Archivo: register_provider.dart
import 'dart:async';

void validateEmail(String email) {
  _timer?.cancel(); // Cancelar búsqueda anterior
  _timer = Timer(const Duration(milliseconds: 500), () async {
    // Lógica asíncrona para verificar si el correo existe
    final exists = await apiService.checkEmail(email);
    if (exists) state = state.copyWith(emailError: "⚠️ Correo ya registrado");
  });
}
