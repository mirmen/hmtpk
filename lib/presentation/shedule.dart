import 'package:flutter/material.dart';

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
        title: const Text('Расписание', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        actions: <Widget>[
          IconButton(onPressed: () { print("Нажата кнопка меню"); }, icon: Icon(Icons.menu), color: Colors.white,)
        ],
        backgroundColor: const Color(0xff007bff),
      ),
      body: const SingleChildScrollView(
        child: const Column(
          children: [
            const Text('123')
          ],
        ),
      ),
    );
  }
}
