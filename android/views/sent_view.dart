import 'dart:ui';

import 'package:andriod/views/adminhome_view.dart';
import 'package:andriod/views/home_view.dart';
import 'package:andriod/views/resent_view.dart';
import 'package:flutter/material.dart';

class StudentAttendanceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Attendance',
      theme: ThemeData(),
      home: StudentAttendanceScreen(),
    );
  }
}

class StudentAttendanceScreen extends StatelessWidget {
  final List<String> rollNumbers = [
    '45',
    '54',
    '56',
    '66',
    '77',
    '88',
    '89',
    '99'
  ];
  final List<String> phoneNumbers = [
    '7973896032',
    '8987996066',
    '9876443322',
    '9787667456',
    '6986758756',
    '9786776564',
    '9786875645',
    '9978784467'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('sms page'),
        surfaceTintColor: Color.fromARGB(255, 95, 22, 110),
        shadowColor: Color.fromARGB(255, 121, 24, 124),
        backgroundColor: Color.fromARGB(255, 100, 25, 123),
        centerTitle: true, // Center-align the title
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyApp()));
            // Handle back button press here
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
              // Handle home icon press here
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ROLL NUMBERS',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple),
                      ),
                      SizedBox(height: 8),
                      ...rollNumbers.map((rollNumber) {
                        return Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            rollNumber,
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        );
                      }).toList(),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'PHONE NUMBERS',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple),
                      ),
                      SizedBox(height: 8),
                      ...phoneNumbers.map((phoneNumber) {
                        return Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            phoneNumber,
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        );
                      }).toList(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Implement SMS sending functionality here
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(
                        255, 91, 28, 102), // Change color to purple
                  ),
                  child: Text('Send SMS'),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SmsNotSentListApp()));

                    // Implement SMS checking functionality here
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(
                        255, 79, 23, 88), // Change color to purple
                  ),
                  child: Text('Check SMS'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
