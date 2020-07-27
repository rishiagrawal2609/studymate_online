class Classes {
  final String subject;
  final String type;
  final String teacherName;
  final DateTime time;
  bool isPassed = false;
  bool isHappening = false;

  Classes({this.subject, this.type, this.teacherName, this.time});
}

List<Classes> classes = [
  Classes(
    subject: 'Math',
    type: 'Online Class',
    teacherName: 'Sarah Mueller',
    time: DateTime.parse('2020-07-30 10:30:00'),
  ),
  Classes(
    subject: 'Japanese',
    type: 'Online Class',
    teacherName: 'Alice Watson',
    time: DateTime.parse('2020-07-28 06:30:00'),
  ),
  Classes(
    subject: 'Physics',
    type: 'Online Class',
    teacherName: 'Richard Nixon',
    time: DateTime.parse('2020-07-27 14:30:00'),
  ),
  Classes(
    subject: 'History',
    type: 'Online Class',
    teacherName: 'Omaira Sheikh',
    time: DateTime.parse('2020-07-26 07:30:00'),
  ),
];
