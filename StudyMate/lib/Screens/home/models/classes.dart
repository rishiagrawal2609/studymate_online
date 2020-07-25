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
    subject: "Math",
    type: "Online Class",
    teacherName: "Sarah Mueller",
    time: DateTime.parse("2020-07-28 10:30:00"),
  ),
  Classes(
    subject: "Japanese",
    type: "Online Class",
    teacherName: "Alice Xar",
    time: DateTime.parse("2020-07-30 06:30:00"),
  ),
  Classes(
    subject: "Physics",
    type: "Online Class",
    teacherName: "Ronald Richard",
    time: DateTime.parse("2020-07-25 14:30:00"),
  ),
  Classes(
    subject: "History",
    type: "Online Class",
    teacherName: "Maria Sheikh",
    time: DateTime.parse("2020-07-24 07:30:00"),
  ),
];
