import 'package:flutter/material.dart';
import 'package:hmtpk/widgets/tablecalendar.dart';


class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu, color: Colors.white,),
        title: const Text('Расписание', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
        backgroundColor: const Color(0xff007bff),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TableCalendarWidget(), // lib/widgets/tablecalendar.dart
          ],
        ),
      ),
    );
  }
}
