import 'package:flutter/material.dart';
import 'package:t_posture_gym/core/design_system/atoms/app_colors.dart';
import 'package:t_posture_gym/core/design_system/atoms/app_text_styles.dart';
import 'package:t_posture_gym/core/design_system/molecules/custom_textfield.dart';
import 'package:t_posture_gym/core/design_system/molecules/primary_button.dart';
import 'package:t_posture_gym/features/auth/pages/signup_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Placeholder para la imagen de fondo como en tu diseño
              Container(
                height: 300,
                decoration: const BoxDecoration(
                  // Aquí podrías poner la imagen del hombre con la pesa
                  // color: Colors.grey, // Temporal
                ),
                alignment: Alignment.bottomLeft,
                child: Text('Iniciar sesión', style: AppTextStyles.heading1),
              ),
              const SizedBox(height: 32),

              const CustomTextField(label: 'Correo electrónico'),
              const SizedBox(height: 24),
              const CustomTextField(label: 'Contraseña', isPassword: true),
              const SizedBox(height: 16),

              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  '¿Olvidaste tu contraseña?',
                  style: AppTextStyles.textLink,
                ),
              ),
              const SizedBox(height: 32),

              PrimaryButton(
                text: 'Iniciar sesión',
                onPressed: () {
                  // TODO: Lógica de Iniciar Sesión
                },
              ),
              const SizedBox(height: 24),

              _buildDivider(),
              const SizedBox(height: 24),

              // Aquí iría el botón de "Continuar con Google"
              // Por ahora, un placeholder
              const SizedBox(height: 40),
              _buildFooter(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDivider() {
    return Row(
      children: [
        Expanded(child: Divider(color: AppColors.darkField, thickness: 2)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text('O continúa con', style: AppTextStyles.secondaryText),
        ),
        Expanded(child: Divider(color: AppColors.darkField, thickness: 2)),
      ],
    );
  }

  Widget _buildFooter(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('¿No tienes cuenta? ', style: AppTextStyles.secondaryText),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SignupPage()),
            );
          },
          child: Text('Crear cuenta nueva', style: AppTextStyles.textLink),
        ),
      ],
    );
  }
}
