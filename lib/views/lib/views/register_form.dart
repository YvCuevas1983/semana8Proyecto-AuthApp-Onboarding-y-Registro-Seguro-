// Archivo: register_form.dart
TextFormField(
  decoration: InputDecoration(
    labelText: 'Correo electrónico',
    prefixIcon: Icon(Icons.email),
    errorText: state.emailError.isNotEmpty ? state.emailError : null,
    // El errorText muestra el mensaje con el icono automático del tema
  ),
  keyboardType: TextInputType.emailAddress,
  onChanged: (val) => ref.read(registerProvider.notifier).validateEmail(val),
)
