import 'package:andriod/views/home_view.dart';
import 'package:andriod/views/sheet_view.dart';
import 'package:flutter/material.dart';

//import 'faculty_view.dart';
import 'home_view.dart';

class Selection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor:
              Color.fromARGB(255, 184, 57, 171), // Dark purple color
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Faculty()));
              // Handle back button tap
            },
          ),
          title: Text(
            'Attendance Selection',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
                // Handle home icon tap
              },
            ),
          ],
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                DropdownButton<String>(
                  items: ['R18', 'R19', 'R20']
                      .map((regulation) => DropdownMenuItem<String>(
                            value: regulation,
                            child: Text(regulation),
                          ))
                      .toList(),
                  onChanged: (value) {
                    // Handle regulation dropdown change
                  },
                  value: 'R18', // Initial value
                  isExpanded: true,
                  icon: Icon(Icons.arrow_drop_down),
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(
                      color: Color.fromARGB(255, 190, 69, 182), fontSize: 16),
                ),
                SizedBox(height: 20),
                DropdownButton<String>(
                  items: ['DS', 'IT', 'CSE']
                      .map((branch) => DropdownMenuItem<String>(
                            value: branch,
                            child: Text(branch),
                          ))
                      .toList(),
                  onChanged: (value) {
                    // Handle branch dropdown change
                  },
                  value: 'DS', // Initial value
                  isExpanded: true,
                  icon: Icon(Icons.arrow_drop_down),
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(
                      color: Color.fromARGB(255, 210, 20, 236), fontSize: 16),
                ),
                SizedBox(height: 20),
                DropdownButton<String>(
                  items:
                      ['1-1', '1-2', '2-1', '2-2', '3-1', '3-2', '4-1', '4-2']
                          .map((semester) => DropdownMenuItem<String>(
                                value: semester,
                                child: Text(semester),
                              ))
                          .toList(),
                  onChanged: (value) {
                    // Handle semester dropdown change
                  },
                  value: '1-1', // Initial value
                  isExpanded: true,
                  icon: Icon(Icons.arrow_drop_down),
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(
                      color: Color.fromARGB(255, 203, 67, 197), fontSize: 16),
                ),
                SizedBox(height: 20),
                DropdownButton<String>(
                  items: ['A', 'B']
                      .map((section) => DropdownMenuItem<String>(
                            value: section,
                            child: Text(section),
                          ))
                      .toList(),
                  onChanged: (value) {
                    // Handle section dropdown change
                  },
                  value: 'A', // Initial value
                  isExpanded: true,
                  icon: Icon(Icons.arrow_drop_down),
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(
                      color: Color.fromARGB(255, 194, 82, 192), fontSize: 16),
                ),
                SizedBox(height: 20),
                DropdownButton<String>(
                  items: ['FDS', 'DBMS', 'CO', 'DS', 'OS']
                      .map((subject) => DropdownMenuItem<String>(
                            value: subject,
                            child: Text(subject),
                          ))
                      .toList(),
                  onChanged: (value) {
                    // Handle subject dropdown change
                  },
                  value: 'FDS', // Initial value
                  isExpanded: true,
                  icon: Icon(Icons.arrow_drop_down),
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(
                      color: Color.fromARGB(255, 227, 71, 227), fontSize: 16),
                ),
                SizedBox(height: 20),
                DropdownButton<int>(
                  items: [1, 2, 3, 4, 5, 6, 7, 8]
                      .map((period) => DropdownMenuItem<int>(
                            value: period,
                            child: Text('$period'),
                          ))
                      .toList(),
                  onChanged: (value) {
                    // Handle period dropdown change
                  },
                  value: 1, // Initial value
                  isExpanded: true,
                  icon: Icon(Icons.arrow_drop_down),
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(
                      color: Color.fromARGB(255, 215, 80, 211), fontSize: 16),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Sheet()));
                    // Handle "Click here" button tap
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 199, 67, 199),
                    padding: EdgeInsets.symmetric(vertical: 15),
                    textStyle: TextStyle(fontSize: 18),
                  ),
                  child: Text('Click here'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
