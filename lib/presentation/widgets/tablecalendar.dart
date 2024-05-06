import 'package:table_calendar/table_calendar.dart';
import 'package:flutter/material.dart';

/*
ВИДЖЕТ ОТРИСОВЫВАЮЩИЙ НЕДЕЛЬНЫЙ КАЛЕНДАРЬ
ВНУТРИ ГЛАВНОЙ СТРАНИЦЫ С РАСПИСАНИЕМ
*/

class _TableCalendarWidgetState extends State<TableCalendarWidget> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay = DateTime.now();
  CalendarFormat _calendarFormat = CalendarFormat.week;
  Map<CalendarFormat, String> _availableCalendarFormats = const {
    CalendarFormat.month : 'месяц',
    CalendarFormat.twoWeeks: '2 недели',
    CalendarFormat.week: 'неделя'
  };
  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      locale: 'ru_RU', // локализация
      availableCalendarFormats: _availableCalendarFormats,
      availableGestures: AvailableGestures.horizontalSwipe,
      firstDay: DateTime.utc(2000, 1, 1),
      lastDay: DateTime.utc(2050, 1, 1),
      focusedDay: _focusedDay,
      selectedDayPredicate: (day) => isSameDay(day, _selectedDay),
      calendarFormat: _calendarFormat, // сколько дней отображать (неделя, 2, месяц)
      onDaySelected: (selectedDay, focusedDay) {
        setState(() {
          _selectedDay = selectedDay;
          _focusedDay = focusedDay;
        });
      },
      onFormatChanged: (format) {
        setState(() {
          _calendarFormat = format;
        });
      },
      headerStyle: const HeaderStyle(
        formatButtonShowsNext: false,
        titleCentered: false,
        formatButtonVisible: true, // отключает кнопку выбора отображения (неделя, 2 недели, месяц)
        rightChevronVisible: false, // отключает стрелку вправо для перемещения
        leftChevronVisible: false, // отключает стрелку влево для перемещения
        headerPadding: EdgeInsets.all(15), // добавляет отступы
        formatButtonDecoration: BoxDecoration(
          // shape: BoxShape.rectangle
        ),
        formatButtonTextStyle: TextStyle(
          color: Color(0xff007bff),
          fontSize: 14.255
        ),
      ),
      calendarStyle: const CalendarStyle(
        todayDecoration: BoxDecoration( // изменяет дефолтную форму текущего дня
                    color: Color(0xffDCDCDC),
                    shape: BoxShape.circle
                ),
        selectedDecoration: BoxDecoration(
          color: Color(0xff007bff),
          shape: BoxShape.circle
        )
      ),
    );
  }
}

class TableCalendarWidget extends StatefulWidget {
  const TableCalendarWidget({super.key});

  @override
  State<TableCalendarWidget> createState() => _TableCalendarWidgetState();
}