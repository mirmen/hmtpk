import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
// https://pub.dev/packages/table_calendar

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
        TableCalendar(
          firstDay: DateTime.utc(2024, 1, 1),
          lastDay: DateTime.utc(2025, 1, 1),
          focusedDay: DateTime.now(),
          calendarFormat: CalendarFormat.week, // сколько дней отображать (неделя, 2, месяц)
          headerStyle: HeaderStyle(
            formatButtonVisible: false, // отключает кнопку выбора отображения (неделя, 2 недели, месяц)
            rightChevronVisible: false, // отключает стрелку вправо для перемещения
            leftChevronVisible: false, // отключает стрелку влево для перемещения
            headerPadding: EdgeInsets.all(15), // добавляет отступы
          ),
          calendarStyle: CalendarStyle(
            todayDecoration: BoxDecoration( // изменяет дефолтную форму текущего дня
                color: const Color(0xff007bff),
                shape: BoxShape.circle
            ),
          ),
      ),
          ],
        ),
      ),
    );
  }
}
