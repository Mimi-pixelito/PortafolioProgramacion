import 'package:flutter/material.dart';

class AppTheme {
  
  static final ThemeData lightPinkTheme = ThemeData(
    // Estilo general
    brightness: Brightness.light,
    // Fondo principal
    scaffoldBackgroundColor: const Color(0xFFFFF0F5), 
    

    primaryColor: const Color(0xFFE91E63), 
    colorScheme: const ColorScheme.light(
      primary: Color(0xFFE91E63), 
      secondary: Color(0xFFF48FB1), 
      // Fondo de tarjetas
      surface: Color(0xFFFFFAFA), 
      background: Color(0xFFFFF0F5), 
      onPrimary: Colors.white, 
      onSurface: Color(0xFF333333), 
    ),

    // Texto
    textTheme: const TextTheme(
      // Principal
      headlineLarge: TextStyle(
        color: Color(0xFF333333), 
        fontWeight: FontWeight.w900,
        fontSize: 36,
      ),

      headlineSmall: TextStyle(
        color: Color(0xFF616161), 
        fontWeight: FontWeight.w400,
        fontSize: 18,
      ),
      // Seccion
      titleLarge: TextStyle(
        color: Color(0xFF333333),
        fontWeight: FontWeight.bold,
        fontSize: 24,
      ),
  
      bodyLarge: TextStyle(
        color: Color(0xFF616161),
        fontSize: 16,
        height: 1.5,
      ),
    ),
    
    // Secciones 2
    cardTheme: CardThemeData(
      color: const Color(0xFFFFFAFA), 
      margin: const EdgeInsets.symmetric(vertical: 10.0), 
      elevation: 6, 
      shape: const RoundedRectangleBorder( 
        borderRadius: BorderRadius.only( 
          topLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
          topRight: Radius.circular(8.0), 
          bottomLeft: Radius.circular(8.0),
        ), 
      ),
    ),
    
    // AppBar
    appBarTheme: const AppBarTheme(
      color: Color(0xFFF48FB1),
      elevation: 4,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold
      ),
    ),

    // Divisores
    dividerTheme: const DividerThemeData(
      color: Color(0xFFE91E63),
      space: 30, 
      thickness: 2.0, 
    )
  );
}