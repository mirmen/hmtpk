import 'package:table_calendar/table_calendar.dart';
// https://pub.dev/packages/table_calendar
import 'package:flutter/material.dart';

class TableCalendarWidget extends StatefulWidget {
  const TableCalendarWidget({super.key});

  @override
  State<TableCalendarWidget> createState() => _TableCalendarWidgetState();
}

class _TableCalendarWidgetState extends State<TableCalendarWidget> {
  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      locale: 'ru_RU',
      firstDay: DateTime.utc(2024,1,1),
      lastDay: DateTime.utc(2025,1,1),
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
    );
  }
}
