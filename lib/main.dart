import 'package:flutter/material.dart';
import 'package:task_six/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google Maps Task',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffececec)
      ),
      home: const HomePage(),
    );
  }
}
