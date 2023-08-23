import 'package:andriod/views/home_view.dart';
import 'package:flutter/material.dart';
import 'attendence_view.dart';
import 'cummulative_view.dart';
//import 'home_view.dart';
class StudentPage
 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Student Page',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home()));
            // Handle back button press
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
              // Handle home button press
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                  "https://img.lovepik.com/element/45010/3248.png_860.png",
                  scale: 1.0,
                  fit: BoxFit.cover), // Replace with your image asset path
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Student()));
                  // Handle student attendance button press
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                  minimumSize: Size(300, 50), // Adjust the button size
                ),
                child: Text(
                  'Student Attendance',
                  style: TextStyle(fontSize: 30), // Adjust the font size
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CumulativeAttendanceScreen()));
                  // Handle cumulative attendance button press
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                  minimumSize: Size(300, 50), // Adjust the button size
                ),
                child: Text(
                  'Cumulative Attendance',
                  style: TextStyle(fontSize: 30), // Adjust the font size
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
