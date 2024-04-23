import 'package:flutter/material.dart';
import 'package:hmtpk/widgets/tablecalendar.dart';
import 'package:hmtpk/widgets/testshedule.dart';


class ShedulePage extends StatefulWidget {
  const ShedulePage({super.key});

  @override
  State<ShedulePage> createState() => _ShedulePageState();
}

class _ShedulePageState extends State<ShedulePage> {
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
          children: <Widget>[
            TableCalendarWidget(), // lib/widgets/tablecalendar.dart
            TestShedule(
                startTime: '8:00',
                endTime: '8:45',
                subjectName: 'Основы кроссплатформенной мобильной разработки на Flutter ',
                teacherName: 'Мельгазиев Эмир Русланович',
                classroomBody: 'ауд. У-777 / УК Уральская, 11'
            ),
            TestShedule(
                startTime: '8:00',
                endTime: '8:45',
                subjectName: 'Основы кроссплатформенной мобильной разработки на Flutter ',
                teacherName: 'Мельгазиев Эмир Русланович',
                classroomBody: 'ауд. У-777 / УК Уральская, 11'
            ),
            TestShedule(
                startTime: '8:00',
                endTime: '8:45',
                subjectName: 'Основы кроссплатформенной мобильной разработки на Flutter odfoidghfidghfiudghfiudfgbdifdiufhdifhdfhdhdufhhdfuhfdofodjfodjfodfd',
                teacherName: 'Мельгазиев Эмир Русланович',
                classroomBody: 'ауд. У-777 / УК Уральская, 11'
            ),
            //TestShedule()
          ],
        ),
      ),
    );
  }
}
