// internal/application.dart
import 'package:flutter/material.dart';
import 'package:hmtpk/internal/theme.dart';
import 'package:hmtpk/presentation/screens/information_screen.dart';
import 'package:hmtpk/presentation/screens/shedule_screen.dart';
import 'package:provider/provider.dart';

class ThemeProvider extends ChangeNotifier {
  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'hmtpk',
            theme: themeProvider.isDarkMode ? darkTheme : lightTheme,
            initialRoute: '/shedule',
            routes: {
              '/shedule': (context) => const SheduleScreen(),
              '/information': (context) => const InformationScreen()
            },
          );
        },
      ),
    );
  }
}