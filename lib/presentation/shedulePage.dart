import 'package:flutter/material.dart';
import 'package:hmtpk/widgets/tablecalendar.dart';
import 'package:hmtpk/widgets/lessonwidget.dart';


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
        leading: GestureDetector(
            child: const Icon(Icons.menu, color: Colors.white),
            onTap: () {
              // ДОБАВИТЬ СЮДА МЕНЮ
            }
        ),
        title: const Text('Расписание', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
        backgroundColor: const Color(0xff007bff),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            TableCalendarWidget(), // lib/widgets/tablecalendar.dart
            LessonWidget(
                startTime: '8:00',
                endTime: '8:45',
                subjectName: 'Основы кроссплатформенной мобильной разработки на Flutter ',
                teacherName: 'Мельгазиев Эмир Русланович',
                classroomBody: 'ауд. У-777 / УК Уральская, 11'
            ),
            LessonWidget(
                startTime: '8:50',
                endTime: '9:35',
                subjectName: 'Основы кроссплатформенной мобильной разработки на Flutter ',
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
