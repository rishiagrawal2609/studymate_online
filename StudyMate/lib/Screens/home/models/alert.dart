class Alert {
  final String title;
  final String subject;
  final DateTime time;

  Alert({this.title, this.subject, this.time});
}

List<Alert> recentAlerts = [
  Alert(
    title: 'Maths Test',
    subject: 'Linear Algebra',
    time: DateTime.parse('2020-07-28 12:30:00'),
  ),
  Alert(
    title: 'Physics Test',
    subject: 'Kinematics',
    time: DateTime.parse('2020-07-30 14:30:00'),
  ),
  Alert(
    title: 'Chemistry Test',
    subject: 'Organic',
    time: DateTime.parse('2020-07-24 14:30:00'),
  ),
];
