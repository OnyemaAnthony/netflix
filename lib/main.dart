import 'package:flutter/material.dart';
import 'package:netflix/screens/Home_screen.dart';
import 'package:netflix/screens/navigation_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Netflix',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:NavigationScreen(),
    );
  }
}