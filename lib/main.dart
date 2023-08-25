import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inicio de Sesión',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 52, 121, 52),
        textTheme: const TextTheme(bodyLarge: TextStyle(color: Colors.white)),
        primarySwatch: Colors.green,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Inicio de Sesión'),
          titleTextStyle: const TextStyle(color: Colors.white, fontSize: 25.0)),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              style: const TextStyle(color: Colors.white, fontSize: 18),
              decoration: const InputDecoration(
                  labelText: 'Correo Electrónico',
                  labelStyle: TextStyle(color: Colors.white, fontSize: 18)),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextField(
              controller: _passwordController,
              style: const TextStyle(color: Colors.white, fontSize: 18),
              decoration: const InputDecoration(
                labelText: 'Contraseña',
                labelStyle: TextStyle(color: Colors.white, fontSize: 18),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Aquí agregarás la lógica para verificar las credenciales
              },
              child: const Text(
                'Iniciar Sesión',
              ),
            ),
            const SizedBox(height: 10.0),
            TextButton(
              onPressed: () {},
              child: const Text(
                '¿No tienes una cuenta? ¡Regístrate aquí!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
