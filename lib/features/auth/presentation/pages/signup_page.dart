import 'package:flutter/material.dart';
import 'package:t_posture_gym/core/design_system/atoms/app_colors.dart';
import 'package:t_posture_gym/core/design_system/atoms/app_text_styles.dart';
import 'package:t_posture_gym/core/design_system/molecules/custom_textfield.dart';
import 'package:t_posture_gym/core/design_system/molecules/primary_button.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Placeholder para la imagen de fondo
              Container(
                height: 300,
                alignment: Alignment.bottomLeft,
                child: Text('Registro', style: AppTextStyles.heading1),
              ),
              const SizedBox(height: 32),
              
              const CustomTextField(label: 'Nombre completo'),
              const SizedBox(height: 24),
              const CustomTextField(label: 'Correo electrónico'),
              const SizedBox(height: 24),
              const CustomTextField(label: 'Contraseña', isPassword: true),
              const SizedBox(height: 24),
              const CustomTextField(label: 'Confirmar contraseña', isPassword: true),
              const SizedBox(height: 32),
              
              PrimaryButton(
                text: 'Crear cuenta',
                onPressed: () {
                  // TODO: Lógica de Registro
                  // Navegar a la encuesta de onboarding
                },
              ),
              const SizedBox(height: 24),
              
              // Aquí iría el "O regístrate con" y botón de Google
              
              const SizedBox(height: 40),
              _buildFooter(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFooter(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('¿Ya tienes cuenta? ', style: AppTextStyles.secondaryText),
        GestureDetector(
          onTap: () {
            Navigator.pop(context); // Regresa a la pantalla de Login
          },
          child: Text('Inicia sesión', style: AppTextStyles.textLink),
        ),
      ],
    );
  }
}