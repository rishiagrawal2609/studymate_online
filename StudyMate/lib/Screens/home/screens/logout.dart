import 'package:StudyMate/Screens/home/drawer/navigation_bloc/navigation_bloc.dart';
import 'package:StudyMate/services/auth.dart';
import 'package:flutter/material.dart';

class LogOut extends StatelessWidget with NavigationStates {
  final AuthService _auth = AuthService();

  var padding;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF333945),
      appBar: AppBar(
        title: Text('StudyMate'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Are you sure want to Log Out',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              RaisedButton.icon(
                icon: Icon(Icons.person),
                label: Text('Log Out'),
                onPressed: () async {
                  await _auth.SignOut();
                },
                color: Color(0xff0A79DF),
                textColor: Colors.white,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                splashColor: Colors.grey,
              )
            ],
          ),
        ),
      ),
    );
  }
}
