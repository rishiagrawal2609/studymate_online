import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff2C3335),
        body: SafeArea(
          child: Container(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 30),
              child: Column(children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.sort, size: 30, color: Colors.grey)),
                      CircleAvatar(
                          radius: 20,
                          backgroundImage: NetworkImage(
                              'https://i.pinimg.com/236x/f2/32/e6/f232e6064e658f25c284c7acb83e93bf.jpg'))
                    ]),
                Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: <Widget>[
                    Item(
                        title: 'Attendance',
                        icon: Icons.fingerprint,
                        color: 0xffFED525),
                    Item(
                        title: 'Online Class',
                        icon: Icons.laptop,
                        color: 0xffFD637B),
                    Item(
                        title: 'Study Material',
                        icon: Icons.library_books,
                        color: 0xff21CDFF),
                    Item(
                        title: 'Syllabus', icon: Icons.book, color: 0xff192A56),
                    Item(
                        title: 'Quiz',
                        icon: Icons.question_answer,
                        color: 0xff7585F6),
                    Item(
                        title: 'Result',
                        icon: Icons.show_chart,
                        color: 0xff53E0BC),
                  ],
                ),
              ])),
        ));
  }
}

class Item extends StatelessWidget {
  final String title;
  final dynamic icon;
  final dynamic color;

  Item({this.title, this.icon, this.color});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: (screenWidth - 40 - 20) / 2,
      height: (screenWidth - 40 - 20 - 30) / 2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Color(color),
      ),
      padding: EdgeInsets.only(bottom: 10),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          child: Icon(icon, size: 40, color: Colors.white),
          margin: EdgeInsets.only(bottom: 10),
        ),
        Text(title,
            style: TextStyle(
                fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold))
      ]),
    );
  }
}
