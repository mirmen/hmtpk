import 'package:flutter/material.dart';
import 'package:hmtpk/internal/application.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(const Application()));
  // initializeDateFormatting() для локализации виджета TableCalendar
}


