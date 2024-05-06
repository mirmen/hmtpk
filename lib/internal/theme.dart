import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Светлая тема для приложения
final ThemeData lightTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
  fontFamily: GoogleFonts.montserrat().fontFamily,
  useMaterial3: true,
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xff007bff),
      titleTextStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600
      ),
      iconTheme: const IconThemeData(
          color: Colors.white
      )
  ),
  drawerTheme: const DrawerThemeData(
      backgroundColor: Colors.white
  ),
  iconTheme: const IconThemeData(
      color: Colors.black
  ),
  textTheme: const TextTheme(
      bodyLarge: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black
      ),
      bodyMedium: TextStyle(
          fontWeight: FontWeight.w100,
          fontSize: 12,
          color: Colors.black
      ),
      bodySmall: TextStyle(
          color: Colors.grey,
          fontSize: 10,
          fontWeight: FontWeight.w100
      )
  ),
);

// Темная тема для приложения
final ThemeData darkTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
  fontFamily: GoogleFonts.montserrat().fontFamily,
  useMaterial3: true,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Colors.black38,
  appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xff007bff),
      titleTextStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600
      ),
      iconTheme: const IconThemeData(
          color: Colors.white
      )
  ),
  drawerTheme: const DrawerThemeData(
    backgroundColor: Colors.black,
  ),
  iconTheme: const IconThemeData(
      color: Colors.white
  ),
  textTheme: const TextTheme(
      bodyLarge: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white
      ),
      bodyMedium: TextStyle(
          fontWeight: FontWeight.w100,
          fontSize: 12,
          color: Colors.white
      ),
      bodySmall: TextStyle(
          color: Colors.grey,
          fontSize: 10,
          fontWeight: FontWeight.w100
      )
  ),
);

class ThemeApp extends StatelessWidget {
  const ThemeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
