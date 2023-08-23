import 'package:flutter/material.dart';

void main() {
  runApp(StudentAttendanceApp());
}

class StudentAttendanceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Attendance',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StudentAttendanceScreen(),
    );
  }
}

class StudentAttendanceScreen extends StatelessWidget {
  final List<String> rollNumbers = [' ','2',' ', '3',' ', '4',' ', '5'];
  final List<String> phoneNumbers = [
    '           ',
    '9989786976',
    '           ',
    '8798797887',
    '          ',
    '8789796677',
    '          ',
    '7676675567'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Absent List'),
      ),
      body: Padding(
        padding: EdgeInsets.all(40.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ROLL NUMBERS',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: rollNumbers.map((rollNumber) {
                      return Text(rollNumber);
                    }).toList(),
                  ),
                ],
              ),
            ),
            SizedBox(width: 80),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'PHONE NUMBERS',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: phoneNumbers.map((phoneNumber) {
                      return Text(phoneNumber);
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      persistentFooterButtons: [
        ElevatedButton(
          onPressed: () {
            // Implement SMS sending functionality here
          },
          child: Text('Send SMS'),
        ),
        ElevatedButton(
          onPressed: () {
            // Implement SMS checking functionality here
          },
          child: Text('Check SMS'),
        ),
      ],
    );
  }
}
