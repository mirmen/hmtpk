import 'package:flutter/material.dart';
import 'package:hmtpk/internal/theme.dart';
import 'package:provider/provider.dart';
import 'package:hmtpk/internal/application.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {

    final themeProvider = Provider.of<ThemeProvider>(context);
    final theme = themeProvider.isDarkMode ? darkTheme : lightTheme;

    return Column(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: 56.0,
          color: Color(0xff007bff),
        ),
        GestureDetector(
          onTap: () { print('Студенту'); },
          child: Container(
            height: MediaQuery.of(context).size.height * 0.06,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.supervisor_account),
                Text('Студенту',)
              ],
            ),
            decoration: BoxDecoration(
                color: theme.scaffoldBackgroundColor,
                shape: BoxShape.rectangle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 4,
                  )
                ]
            ),
          ),
        ),
        GestureDetector(
          onTap: () { print('Преподавателю'); },
          child: Container(
            height: MediaQuery.of(context).size.height * 0.06,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.person),
                Text('Преподавателю')
              ],
            ),
            decoration: BoxDecoration(
                color: theme.scaffoldBackgroundColor,
                shape: BoxShape.rectangle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 4,
                  )
                ]
            ),
          ),
        ),
        GestureDetector(
          onTap: () { print('По кабинету'); },
          child: Container(
            height: MediaQuery.of(context).size.height * 0.06,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.room),
                Text('Кабинет')
              ],
            ),
            decoration: BoxDecoration(
                color: theme.scaffoldBackgroundColor,
                shape: BoxShape.rectangle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 4,
                  )
                ]
            ),
          ),
        ),
        GestureDetector(
          onTap: () { Navigator.pushNamed(context, '/information'); },
          child: Container(
            height: MediaQuery.of(context).size.height * 0.06,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.info_rounded),
                Text('Информация')
              ],
            ),
            decoration: BoxDecoration(
                color: theme.scaffoldBackgroundColor,
                shape: BoxShape.rectangle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 4,
                  )
                ]
            ),
          ),
        ),
        GestureDetector(
          onTap: () { print('Настройки'); },
          child: Container(
            height: MediaQuery.of(context).size.height * 0.06,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.settings),
                Text('Настройки')
              ],
            ),
            decoration: BoxDecoration(
                color: theme.scaffoldBackgroundColor,
                shape: BoxShape.rectangle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 4,
                  )
                ]
            ),
          ),
        ),
      ],
    );
  }
}
