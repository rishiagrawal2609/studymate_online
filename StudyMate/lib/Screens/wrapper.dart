import 'package:StudyMate/Screens/authenticate/authentication.dart';
import 'package:StudyMate/Screens/home/home.dart';
import 'package:StudyMate/models/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
