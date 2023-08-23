import 'package:andriod/views/student_view.dart';
import 'package:flutter/material.dart';
import 'cummulative_view.dart';
import 'home_view.dart';

class Student extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Student Attendance',
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => StudentPage()));
            },
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
            ),
          ],
        ),
        body: AttendanceScreen(),
      ),
    );
  }
}

class AttendanceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.format_list_numbered),
                    hintText: 'Enter Roll Number',
                  ),
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.calendar_today),
                    hintText: 'Select Date',
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              // Handle click button press
            },
            style: ElevatedButton.styleFrom(primary: Colors.purple),
            child: Text('Click'),
          ),
          SizedBox(height: 16),
          Table(
            columnWidths: {
              0: FlexColumnWidth(2),
              1: FlexColumnWidth(3),
            },
            border: TableBorder.all(),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              TableRow(
                children: [
                  TableCell(
                    child: Center(
                        child: Text('Periods',
                            style:
                                TextStyle(color: Colors.purple, fontSize: 24))),
                  ),
                  TableCell(
                    child: Center(
                        child: Text('Attendance',
                            style:
                                TextStyle(color: Colors.purple, fontSize: 24))),
                  ),
                ],
              ),
              TableRow(
                children: [
                  TableCell(
                    child: Center(
                        child:
                            Text('Period 1', style: TextStyle(fontSize: 20))),
                  ),
                  TableCell(
                    child: Center(
                        child: Text('Present', style: TextStyle(fontSize: 20))),
                  ),
                ],
              ),
              TableRow(
                children: [
                  TableCell(
                    child: Center(
                        child:
                            Text('Period 2', style: TextStyle(fontSize: 20))),
                  ),
                  TableCell(
                    child: Center(
                        child: Text('Absent', style: TextStyle(fontSize: 20))),
                  ),
                ],
              ),
              TableRow(
                children: [
                  TableCell(
                    child: Center(
                        child:
                            Text('Period 3', style: TextStyle(fontSize: 20))),
                  ),
                  TableCell(
                    child: Center(
                        child: Text('Present', style: TextStyle(fontSize: 20))),
                  ),
                ],
              ),
              TableRow(
                children: [
                  TableCell(
                    child: Center(
                        child:
                            Text('Period 4', style: TextStyle(fontSize: 20))),
                  ),
                  TableCell(
                    child: Center(
                        child: Text('Present', style: TextStyle(fontSize: 20))),
                  ),
                ],
              ),
              TableRow(
                children: [
                  TableCell(
                    child: Center(
                        child:
                            Text('Period 5', style: TextStyle(fontSize: 20))),
                  ),
                  TableCell(
                    child: Center(
                        child: Text('Present', style: TextStyle(fontSize: 20))),
                  ),
                ],
              ),
              TableRow(
                children: [
                  TableCell(
                    child: Center(
                        child:
                            Text('Period 6', style: TextStyle(fontSize: 20))),
                  ),
                  TableCell(
                    child: Center(
                        child: Text('Present', style: TextStyle(fontSize: 20))),
                  ),
                ],
              ),
              TableRow(
                children: [
                  TableCell(
                    child: Center(
                        child:
                            Text('Period 7', style: TextStyle(fontSize: 20))),
                  ),
                  TableCell(
                    child: Center(
                        child: Text('Present', style: TextStyle(fontSize: 20))),
                  ),
                ],
              ),
              TableRow(
                children: [
                  TableCell(
                    child: Center(
                        child:
                            Text('Period 8', style: TextStyle(fontSize: 20))),
                  ),
                  TableCell(
                    child: Center(
                        child: Text('Present', style: TextStyle(fontSize: 20))),
                  ),
                ],
              ),
              // Add more rows here
            ],
          ),
          SizedBox(height: 16),
          Expanded(child: SizedBox()), // Spacer
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CumulativeAttendanceScreen()));
              // Handle Check CA button press
            },
            style: ElevatedButton.styleFrom(primary: Colors.purple),
            child: Text('Check Cumulative Attendance',
                style: TextStyle(fontSize: 18)),
          ),
        ],
      ),
    );
  }
}
