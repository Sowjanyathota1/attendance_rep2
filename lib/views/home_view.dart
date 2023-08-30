import 'package:andriod/views/attendence_view.dart';
import 'package:andriod/views/registration_view.dart';
import 'package:andriod/views/student_view.dart';
import 'package:flutter/material.dart';

import 'adminhome_view.dart';
import 'cummulative_view.dart';
import 'faculty_view.dart';

class Home extends StatelessWidget {
  void _handleAttendance() {
    // Implement attendance action
  }

  void _handleCumulativeAttendance() {
    // Implement cumulative attendance action
  }

  void _handleFacultyRegister() {
    // Implement faculty register action
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar( title: Text(
          'ATTENDANCE :)',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),centerTitle: true,
          surfaceTintColor: Color.fromARGB(255, 122, 57, 135),
          shadowColor: Color.fromARGB(255, 121, 24, 124),
          backgroundColor: Color.fromARGB(255, 127, 60, 147),
          leading: PopupMenuButton<String>(
            onSelected: (value) {
              if (value == 'attendance') {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Student()));
                _handleAttendance();
              } else if (value == 'cumulativeAttendance') {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CumulativeAttendanceScreen()));
                _handleCumulativeAttendance();
              } else if (value == 'facultyRegister') {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Register()));
                _handleFacultyRegister();
              }
            },
            itemBuilder: (BuildContext context) => [
              PopupMenuItem<String>(
                value: 'attendance',
                child: Text('Attendance'),
              ),
              PopupMenuItem<String>(
                value: 'cumulativeAttendance',
                child: Text('Cumulative Attendance'),
              ),
              PopupMenuItem<String>(
                value: 'facultyRegister',
                child: Text('Faculty Register'),
              ),
            ],
          ),
          // Make the app bar transparent
          // Remove the shadow
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                  "https://image3.mouthshut.com/images/imagesp/925716539s.png"),
              SizedBox(height: 40), // Adjust spacing as needed
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyApp()));
                  //Implement Admin button onPressed action
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple, // Set button color
                  padding: EdgeInsets.symmetric(
                      horizontal: 20, vertical: 15), // Set button padding
                ),
                icon: Icon(Icons.person),
                label: Text(
                  'Admin',
                  style: TextStyle(fontSize: 20), // Set button label font size
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Faculty()));
                  // Implement Faculty button onPressed action
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                ),
                icon: Icon(Icons.group),
                label: Text(
                  'Faculty',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => StudentPage()));
                  // Implement Student button onPressed action
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                ),
                icon: Icon(Icons.school),
                label: Text(
                  'Student',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//     "https://image3.mouthshut.com/images/imagesp/925716539s.png