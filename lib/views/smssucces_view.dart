import 'package:andriod/views/sent_view.dart';
import 'package:flutter/material.dart';

import 'home_view.dart';

class Postedad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 147, 45, 160),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>StudentAttendanceApp()));
            // Handle back button tap
          },
        ),
        title: Text(
          'Attendance Sheet',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Home()));
              // Handle home icon tap
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              "https://img.freepik.com/premium-vector/green-check-mark-icon-symbol-logo-circle-tick-symbol-green-color-vector-illustration_685751-503.jpg?w=2000", // Replace with your image URL
              
            ),
            SizedBox(height: 20),
            Text(
              "SMS HAS BEEN SENT SUCESSFULLY",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 125, 46, 118),
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}



