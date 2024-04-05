import 'package:flutter/material.dart';
import 'package:hmtpk/presentation/shedule.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        fontFamily: GoogleFonts.montserrat().fontFamily,
        useMaterial3: true,
       ),
      initialRoute: '/schedule',
      routes: {
        '/schedule': (context) => const SchedulePage(),
      },
    );
  }
}

