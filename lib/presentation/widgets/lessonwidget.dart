import 'package:flutter/material.dart';
import 'package:hmtpk/internal/theme.dart';
import 'package:provider/provider.dart';
import 'package:hmtpk/internal/application.dart';

/*
ВИДЖЕТ, ОТРИСОВЫВАЮЩИЙ КОНТЕЙНЕР С ПОЛОВИНОЙ ПАРЫ (45 минут)
ПОЛУЧАЕТ НА ВХОДЕ ДАННЫЕ О НАЧАЛЕ-КОНЦЕ П.ПАРЫ,
ФИО ПРЕПОД., НАЗВАНИЕ ПРЕДМЕТА, КАБИНЕТ/КОРПУС
*/

class LessonWidget extends StatefulWidget {
  final String startTime;
  final String endTime;
  final String subjectName;
  final String teacherName;
  final String classroomBody;
  const LessonWidget({
    super.key,
    required this.startTime,
    required this.endTime,
    required this.subjectName,
    required this.teacherName,
    required this.classroomBody,
  });

  @override
  State<LessonWidget> createState() => _LessonWidgetState();
}

class _LessonWidgetState extends State<LessonWidget> {
  @override
  Widget build(BuildContext context) {

    final themeProvider = Provider.of<ThemeProvider>(context);
    final theme = themeProvider.isDarkMode ? darkTheme : lightTheme;

    return Container(
           // decoration: BoxDecoration(
           //   border: Border.all(
           //     color: Colors.grey,
           //     width: 0.5,
           //     style: BorderStyle.solid
           //   )
           // ),
           // color: Colors.red,
           padding: EdgeInsets.only(
               left: MediaQuery.of(context).size.width * 0.05,
               right: MediaQuery.of(context).size.width * 0.05,
               bottom: MediaQuery.of(context).size.height * 0.005,
           ),
           width: MediaQuery.of(context).size.width * 1,
           // height: MediaQuery.of(context).size.height * 0.1,
           child: Row(
             children: [
               Container(
                 child: Column(
                   children: [
                     Text(widget.startTime, style: theme.textTheme.bodyMedium,),
                     Text(widget.endTime)
                   ],
                 ),
               ),
               Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05)),
               Container(
                 child: Expanded(
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text(
                         widget.subjectName,
                         overflow: TextOverflow.ellipsis,
                         maxLines: 100, // максимальное количесто строк (при нехватке места текст переносится на следующую строку, где MaxLines - максимальное количество таких строк)
                         softWrap: true,
                         style: theme.textTheme.bodyLarge
                        ),
                          RichText(
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                      child: Icon(Icons.person, size: 16, color: theme.iconTheme.color,),
                                  ),
                                  WidgetSpan(
                                    child: Text(
                                        widget.teacherName,
                                        style: theme.textTheme.bodyMedium
                                    ),
                                  ),
                                ],
                              )),
                       Text(widget.classroomBody,
                           style: theme.textTheme.bodySmall
                       ),
                     ],
                   ),
                 ),
               )
             ],
           ),
         );
  }
}
