import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppTextStyles {
  // Estilo para títulos grandes (Iniciar sesión, Registro)
  static TextStyle get heading1 => GoogleFonts.bebasNeue(
        fontSize: 48,
        color: AppColors.lightText,
        fontWeight: FontWeight.w400,
      );

  // Estilo para etiquetas de campos (Correo electrónico, Contraseña)
  static TextStyle get formLabel => GoogleFonts.inter(
        fontSize: 16,
        color: AppColors.lightText,
        fontWeight: FontWeight.w600,
      );

  // Estilo para el texto dentro de los campos
  static TextStyle get formInput => GoogleFonts.inter(
        fontSize: 16,
        color: AppColors.lightText,
        fontWeight: FontWeight.w400,
      );

  // Estilo para botones principales
  static TextStyle get primaryButton => GoogleFonts.inter(
        fontSize: 18,
        color: AppColors.darkText, // Texto oscuro sobre botón verde
        fontWeight: FontWeight.bold,
      );

  // Estilo para texto secundario ("O regístrate con")
  static TextStyle get secondaryText => GoogleFonts.inter(
        fontSize: 14,
        color: AppColors.mediumText,
        fontWeight: FontWeight.w400,
      );

  // Estilo para links ("Iniciar sesión", "Crear cuenta nueva")
  static TextStyle get textLink => GoogleFonts.inter(
        fontSize: 14,
        color: AppColors.primaryGreen,
        fontWeight: FontWeight.w600,
      );
}