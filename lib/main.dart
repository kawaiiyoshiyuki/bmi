import 'package:flutter/material.dart';

import 'constants.dart';
import 'screens/input_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kPrimaryColor,
      ),
      // theme: ThemeData(
      //   primaryColor: Color(0XFF0A0D22),
      //   accentColor: Colors.purple,
      //   scaffoldBackgroundColor: Color(0XFF0A0D22),
      //   textTheme: TextTheme(
      //     bodyText2: TextStyle(
      //       color: Colors.white,
      //     ),
      //   ),
      // ),
      home: InputPage(),
    );
  }
}
