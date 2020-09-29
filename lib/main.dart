import 'package:flutter/material.dart';
import 'package:testTrueFalse/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
          headline2: TextStyle(
            fontSize: 30,
          )
        ),
        primarySwatch: Colors.indigo,


        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WelcomeScreen(),

    );
  }
}