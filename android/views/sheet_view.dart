import 'package:andriod/views/home_view.dart';
import 'package:andriod/views/postadmin_view.dart';
//import 'package:andriod/views/postedadmin_view.dart';
import 'package:flutter/material.dart';

import 'periodattendence_view.dart';
//import 'home_view.dart';

class Sheet extends StatefulWidget {
  @override
  _SheetState createState() => _SheetState();
}

class _SheetState extends State<Sheet> {
  List<String> rollNumbers = [
    '21KP1A4401',
    '21KP1A4402',
    '21KP1A4403',
    '21KP1A4404',
    '21KP1A4405',
    '21KP1A4407',
  ];

  Map<String, bool> presentStatus = {};

  @override
  void initState() {
    super.initState();
    // Initialize presentStatus map with default values
    for (String rollNumber in rollNumbers) {
      presentStatus[rollNumber] = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 147, 45, 160),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Post()));
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
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
              // Handle home icon tap
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  columns: [
                    DataColumn(
                      label: Text(
                        'Roll Number',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'PRESENT',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'ABSENT',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                  rows: List.generate(
                    rollNumbers.length,
                    (index) {
                      String rollNumber = rollNumbers[index];
                      return DataRow(
                        cells: [
                          DataCell(Text(rollNumber)),
                          DataCell(
                            Radio(
                              value: true,
                              groupValue: presentStatus[rollNumber],
                              onChanged: (value) {
                                setState(() {
                                  presentStatus[rollNumber] = value!;
                                });
                              },
                            ),
                          ),
                          DataCell(
                            Radio(
                              value: false,
                              groupValue: presentStatus[rollNumber],
                              onChanged: (value) {
                                setState(() {
                                  presentStatus[rollNumber] = value!;
                                });
                              },
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Postedadmin()));
                  // Handle submit button tap
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 125, 46, 118),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  textStyle: TextStyle(
                    fontSize: 25,
                  ),
                ),
                child: Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
