import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:StudyMate/Screens/home/screens/welcome_screen.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'StudyMate',
      theme: ThemeData(
        primaryColor: Color(0xFF202328),
        accentColor: Colors.blueAccent,
        backgroundColor: Color(0xFF12171D),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WelcomeScreen(),
    );
  }
}
