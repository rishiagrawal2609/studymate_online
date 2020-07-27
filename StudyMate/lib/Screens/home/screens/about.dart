import 'package:flutter/material.dart';

import 'package:StudyMate/Screens/home/drawer/navigation_bloc/navigation_bloc.dart';

class AboutPage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF12171D),
        body: Center(
          child: Text(
            ' We are team Tycoons,\n  We are the creators of \n  StudyMate',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        ));
  }
}
