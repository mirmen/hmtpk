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
            Padding(padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.015)),
            //Text('123273627352352735662735273527352735527352735')
            Container(
              // color: Colors.red,
              width: MediaQuery.of(context).size.width * 0.9,
              height: 200,
              child: Column(
                children: [
                  Row(
                      children: [
                        Column(
                          children: [
                            Text('8:00'),
                            Text('8:45')
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.05,
                        ),
                        Expanded(
                          child: Text(
                            'Производственная практика "Создание мобильных приложений на Flutter"',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 4,
                            softWrap: true,
                            style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ]
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.person, size: 16,),
                      Text('Руководитель практики', style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 12
                      ),),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
