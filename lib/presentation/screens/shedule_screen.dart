import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hmtpk/presentation/widgets/menuwidget.dart';
import 'package:hmtpk/presentation/widgets/tablecalendar.dart';
import 'package:hmtpk/presentation/widgets/lessonwidget.dart';


class SheduleScreen extends StatefulWidget {
  const SheduleScreen({super.key});

  @override
  State<SheduleScreen> createState() => _SheduleScreenState();
}

class _SheduleScreenState extends State<SheduleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SafeArea(
        child: Drawer(
          child: SingleChildScrollView(
            child: MenuWidget()
            ),
          ),
        ),
      appBar: AppBar(
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(Icons.menu, color: Colors.white,),
          );
        }
        ),
        title: const Text('Расписание', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
        backgroundColor: const Color(0xff007bff),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            TableCalendarWidget(), // lib/presentation/widgets/tablecalendar.dart
            LessonWidget(
                startTime: '8:00',
                endTime: '8:45',
                subjectName: 'Основы кроссплатформенной мобильной разработки на фреймворке Flutter ',
                teacherName: 'Мельгазиев Эмир Русланович',
                // teacherName: 'm1rmen',
                classroomBody: 'ауд. У-777 / УК Уральская, 11'
            ),
            LessonWidget(
                startTime: '8:50',
                endTime: '9:35',
                subjectName: 'Основы алгоритмизации и программирования на Dart ',
                teacherName: 'Мельгазиев Эмир Русланович',
                // teacherName: 'm2rmen',
                classroomBody: 'ауд. У-777 / УК Уральская, 11'
            ),
            //TestShedule()
          ],
        ),
      ),
    );
  }
}
