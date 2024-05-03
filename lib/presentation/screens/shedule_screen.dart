import 'package:flutter/material.dart';
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  color: const Color(0xff007bff),
                  height: MediaQuery.of(context).size.height * 0.059,
                ),
                Container(
                  child: RichText(
                      text: const TextSpan(
                        children: [
                          WidgetSpan(
                            child: const Icon(Icons.person, size: 26),
                          ),
                          WidgetSpan(
                            child: Text(
                                'Студент',
                                style: const TextStyle(
                                  fontWeight: FontWeight.w100,
                                  fontSize: 20,
                                )
                            ),
                          ),
                        ],
                      )),
                ),
                Container(
                  child: RichText(
                      text: TextSpan(
                        children: [
                          WidgetSpan(
                            child: const Icon(Icons.people_rounded, size: 26),
                          ),
                          WidgetSpan(
                            child: Text(
                                'Преподаватели',
                                style: const TextStyle(
                                  fontWeight: FontWeight.w100,
                                  fontSize: 20,
                                )
                            ),
                          ),
                        ],
                      )),
                )
              ],
            ),
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
            TableCalendarWidget(), // lib/widgets/tablecalendar.dart
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
