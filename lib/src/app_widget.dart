import 'package:flutter/material.dart';
import 'package:portifolio/src/features/home_feature/presenter/home_screen_widget.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark().copyWith(
        backgroundColor: const Color(0xff121517),
        scaffoldBackgroundColor: const Color(0xff121517),
        primaryColor: const Color(0xff055AA3),
        cardColor: const Color(0xFF172026),
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 20,
            color: Color(0xffEDF4F8),
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
          headline2: TextStyle(
            fontSize: 16,
            color: Color(0xffEDF4F8),
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
          headline3: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 14,
            color: Color(0xff51565A),
          ),
          headline4: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 12,
            color: Color(0xff51565A),
          ),
        ),
      ),
      home: const HomePageWidget(),
    );
  }
}
