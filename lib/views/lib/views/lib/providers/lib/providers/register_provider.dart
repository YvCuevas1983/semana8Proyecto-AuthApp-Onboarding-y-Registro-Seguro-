import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Definición del estado del registro
class RegisterState {
  final String emailError;
  final bool isChecking;

  RegisterState({this.emailError = '', this.isChecking = false});

  RegisterState copyWith({String? emailError, bool? isChecking}) {
    return RegisterState(
      emailError: emailError ?? this.emailError,
      isChecking: isChecking ?? this.isChecking,
    );
  }
}

// Notificador con lógica de Debounce para AuthApp
class RegisterNotifier extends StateNotifier<RegisterState> {
  RegisterNotifier() : super(RegisterState());

  Timer? _timer;

  // Lógica central del Literal C: Debounce y Validación Asíncrona
  void validateEmail(String email) {
    // 1. Cancelar cualquier búsqueda anterior si el usuario sigue escribiendo
    _timer?.cancel(); 

    // 2. Iniciar Timer de 500ms (Debounce)
    _timer = Timer(const Duration(milliseconds: 500), () async {
      if (email.isEmpty) return;

      state = state.copyWith(isChecking: true);

      // Simulación de validación asíncrona (API Service)
      await Future.delayed(const Duration(seconds: 1));

      if (email == "usuario@existente.com") {
        state = state.copyWith(
          emailError: "⚠️ Este correo ya está registrado",
          isChecking: false
        );
      } else {
        state = state.copyWith(emailError: "", isChecking: false);
      }
    });
  }
}

final registerProvider = StateNotifierProvider<RegisterNotifier, RegisterState>((ref) {
  return RegisterNotifier();
});
