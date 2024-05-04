import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hmtpk/presentation/screens/information_screen.dart';
import 'package:hmtpk/presentation/screens/shedule_screen.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'hmtpk',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        fontFamily: GoogleFonts.montserrat().fontFamily,
        useMaterial3: true,
      ),
      initialRoute: '/shedule',
      routes: {
        '/shedule': (context) => const SheduleScreen(),
        '/information': (context) => const InformationScreen()
      },
    );
  }
}
