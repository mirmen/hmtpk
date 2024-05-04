import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hmtpk/presentation/widgets/menuwidget.dart';
import 'package:url_launcher/url_launcher.dart';

class InformationScreen extends StatelessWidget {
  const InformationScreen({super.key});

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
              Navigator.pushNamed(context, '/shedule');
            },
            icon: const Icon(Icons.arrow_back_ios, color: Colors.white,),
          );
        }
        ),
        title: const Text('Информация', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
        backgroundColor: const Color(0xff007bff),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.03),
            width: MediaQuery.of(context).size.width * 0.9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Добро пожаловать в неофициальное мобильное приложение Ханты-Мансийского технолого-педагогического колледжа! Приложение разработано, чтобы сделать жизнь студентов и преподавателей колледжа проще и удобнее. В нем мы попытались устранить все недостатки прошлого приложения и реализовать идеи и потребности студентов и преподавателей. Основная функция приложения - это удобный просмотр актуального расписания занятий, экзаменов и других важных событий. ',
                  style: TextStyle(
                    fontWeight: FontWeight.w500
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.01)),
                Text('Разработал студент группы ИСП-Б-232-2022 Мельгазиев Эмир Русланович', style: TextStyle(fontWeight: FontWeight.w600)),
                GestureDetector(
                  onTap: () async {},
                  child: Row(
                  children: [
                    Icon(Icons.telegram, color: Colors.blueAccent,),
                    Text('t.me/emlgzv', style: TextStyle(color: Colors.blueAccent),),
                  ],
                ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
