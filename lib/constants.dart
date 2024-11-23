import 'package:flutter/material.dart';

class AppConstants {
  // Textos
  static const String appName = "T2 - UserApp";
  static const String homeTitle = "Inicio";
  static const String createProfileTitle = "Crear Perfil";
  static const String profileTitle = "Perfil";
  static const String buttonCreateProfile = "Crear perfil";
  static const String buttonSaveProfile = "Guardar y Ver Perfil";
  static const String buttonBackHome = "Regresar a Inicio";

  // Mensajes
  static const String noProfileMessage = "No hay datos de perfil.";

  // Rutas
  static const String routeHome = "/";
  static const String routeCreateProfile = "/create-profile";
  static const String routeProfile = "/profile";

  // Colores
  static const Color primaryColor = Color(0xFF4A90E2);
  static const Color accentColor = Color(0xFF50E3C2);
  static const Color backgroundColor = Color(0xFFF4F4F4);
  static const Color textPrimaryColor = Colors.black87;
  static const Color textSecondaryColor = Colors.grey;

  // Estilos de texto
  static const TextStyle titleStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: textPrimaryColor,
  );

  static const TextStyle subtitleStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: textSecondaryColor,
  );

  static const TextStyle buttonTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
}
