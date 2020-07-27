class Homework {
  final String title;
  final DateTime dueTime;
  bool isDone = false;

  Homework({this.title, this.dueTime});
}

List<Homework> recentHomeworks = [
  Homework(
    title: 'C++ Exercises',
    dueTime: DateTime.parse('2020-07-30 10:30:00'),
  ),
  Homework(
    title: 'Python Exercises',
    dueTime: DateTime.parse('2020-07-28 14:30:00'),
  ),
];
