import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hmtpk/presentation/widgets/menuwidget.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:hmtpk/internal/theme.dart';
import 'package:provider/provider.dart';
import 'package:hmtpk/internal/application.dart';

class InformationScreen extends StatelessWidget {
  const InformationScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final themeProvider = Provider.of<ThemeProvider>(context);
    final theme = themeProvider.isDarkMode ? darkTheme : lightTheme;

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      drawer: SafeArea(
        child: Drawer(
          child: SingleChildScrollView(
              child: MenuWidget()
          ),
        ),
      ),
      appBar: AppBar(
        iconTheme: theme.appBarTheme.iconTheme,
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/shedule');
            },
            icon: Icon(Icons.arrow_back_ios),
          );
        }
        ),
        title: Text('Информация', style: theme.appBarTheme.titleTextStyle),
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
                  'Добро пожаловать в неофициальное мобильное приложение Ханты-Мансийского технолого-педагогического колледжа! Приложение разработано, чтобы сделать жизнь в колледже проще и удобнее. В нем мы попытались устранить все недостатки прошлого приложения и реализовать идеи и потребности студентов и преподавателей. Основная функция приложения - это удобный просмотр актуального расписания занятий, экзаменов и других важных событий. ',
                  style: theme.textTheme.bodyMedium
                ),
                Padding(padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.01)),
                Text('Разработал студент группы ИСП-Б-232-2022 Мельгазиев Эмир Русланович', style: theme.textTheme.bodyLarge),
                GestureDetector(
                  onTap: () async {},
                  child: Row(
                  children: [
                    Icon(Icons.language_outlined, color: theme.iconTheme.color),
                    Text('melgaziev.is-a.dev', style: theme.textTheme.bodyMedium),
                  ],
                ),
                ),
                GestureDetector(
                  onTap: () async {},
                  child: Row(
                    children: [
                      Icon(Icons.telegram, color: Color(0xff2AABEE),),
                      Text('t.me/emlgzv', style: TextStyle(color: Color(0xff2AABEE)),),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () async {},
                  child: Row(
                    children: [
                      Icon(Icons.alternate_email, color: Color(0xff0077ff),),
                      Text('vk.com/emelgar', style: TextStyle(color: Color(0xff0077ff)),),
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
