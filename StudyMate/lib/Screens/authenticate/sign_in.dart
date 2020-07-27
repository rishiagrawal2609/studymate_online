import 'package:StudyMate/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  final Function toggleView;
  SignIn({this.toggleView});
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  final _formkey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF282B30),
      appBar: AppBar(
        backgroundColor: Color(0xFF6C7174),
        elevation: 0.0,
        title: Text('Sign In To StudyMate'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          key: _formkey,
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.0),
              TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Colors.white),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blueAccent),
                          borderRadius: BorderRadius.circular(20))),
                  onChanged: (val) {
                    // ignore: unused_label
                    validator:
                    (val) => val.isEmpty ? 'Enter an Email' : null;
                    setState(() => email = val);
                  }),
              SizedBox(height: 25.0),
              TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  obscureText: true,
                  onChanged: (val) {
                    // ignore: unused_label
                    validator:
                    (val) => val.length < 6
                        ? 'Enter an Password 6+ char long'
                        : null;

                    setState(() => password = val);
                  }),
              SizedBox(height: 30.0),
              RaisedButton(
                color: Colors.blueAccent,
                splashColor: Colors.grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                child: Text(
                  'Sign In',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () async {
                  if (_formkey.currentState.validate()) {
                    dynamic result =
                        await _auth.signInWithEmailAndPassword(email, password);
                    if (result == null) {
                      setState(() => 'could not signin with these credentials');
                    }
                  }
                },
              ),
              SizedBox(height: 20.0),
              Text(
                error,
                style: TextStyle(color: Colors.red, fontSize: 14.0),
              ),
              Text(
                'OR',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              FlatButton.icon(
                icon: Icon(Icons.person),
                label: Text('Sign Up'),
                textColor: Colors.white,
                color: Colors.greenAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                onPressed: () {
                  widget.toggleView();
                },
              ),
              SizedBox(height: 60.0),
              Text(
                'Check your homeworks or assignments, Exam live time alert, Attend online classes, check your exam dates, Attend quizzes and much more!',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w800),
              )
            ],
          ),
        ),
      ),
    );
  }
}
