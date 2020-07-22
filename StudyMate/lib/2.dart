import 'package:flutter/material.dart';
import 'package:StudyMate/menu_dashboard.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StudyMate',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MenuDashboardPage(),
    );
  }
}
