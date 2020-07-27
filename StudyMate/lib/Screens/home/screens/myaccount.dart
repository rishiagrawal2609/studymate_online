import 'package:flutter/material.dart';

import 'package:StudyMate/Screens/home/drawer/navigation_bloc/navigation_bloc.dart';

class MyAccountsPage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF12171D),
        body: Center(
          child: Text(
            '  Name: Charlotte Dwen\n  ID:- 406625\n  E-mail:- \n  tycooncaffe@gmail.com',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        ));
  }
}
