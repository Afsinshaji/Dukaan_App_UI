import 'package:flutter/material.dart';
import 'package:week_6_project/Screens/homescreen.dart';
// import 'package:week_6_project/Screens/additional_information.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dukaan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Ubuntu',
      ),
      home: HomeScreen(),
    );
  }
}
