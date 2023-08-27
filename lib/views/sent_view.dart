import 'package:flutter/material.dart';
import 'package:andriod/views/adminhome_view.dart';
import 'package:andriod/views/home_view.dart';
import 'package:andriod/views/resent_view.dart';

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
    '45', '54', '56', '66', '77', '88', '89', '99','89','66','80','35',];
  final List<String> phoneNumbers = [
    '7973896032', '8987996066', '9876443322', '9787667456','7097498748','8097867565',
    '6986758756', '9786776564', '9786875645', '9978784467','8995795767','9897868767',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('sms page'),
         surfaceTintColor: Color.fromARGB(255, 95, 22, 110),
        shadowColor: Color.fromARGB(255, 121, 24, 124),
        backgroundColor: Color.fromARGB(255, 100, 25, 123),
        centerTitle: true, leading: IconButton(
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
        // ... your app bar styling ...
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
              child: Table(
                border: TableBorder.all(color: Colors.black),
                children: [
                  TableRow(children: [
                    TableCell(child: Text('ROLL NUMBERS', style: TextStyle(fontSize:20, fontWeight: FontWeight.bold, color: Colors.purple))),
                    TableCell(child: Text('PHONE NUMBERS', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.purple))),
                  ]),
                  ...List.generate(rollNumbers.length, (index) {
                    return TableRow(children: [
                      TableCell(child: Padding(padding: EdgeInsets.symmetric(vertical: 8.0), child: Text(rollNumbers[index], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)))),
                      TableCell(child: Padding(padding: EdgeInsets.symmetric(vertical: 8.0), child: Text(phoneNumbers[index], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)))),
                    ]);
                  }),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 40.0),
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
                  padding: EdgeInsets.only(right: 40.0),
                  
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
      ),
    );
  }
}
