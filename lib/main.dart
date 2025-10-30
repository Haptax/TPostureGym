import 'package:flutter/material.dart';
import 'package:t_posture_gym/core/design_system/atoms/app_colors.dart';
import 'package:t_posture_gym/features/auth/presentation/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TPostureGYM',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: AppColors.darkBackground,
        // Define el tema de la app aquí si es necesario
      ),
      home: const LoginPage(), // Inicia en la pantalla de Login
    );
  }
}