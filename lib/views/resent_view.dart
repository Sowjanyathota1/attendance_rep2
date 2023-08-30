import 'package:andriod/views/smssucces_view.dart';
import 'package:flutter/material.dart';

import 'sent_view.dart';
import 'home_view.dart';

class SmsNotSentListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SMS Not Sent List',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: SmsNotSentListScreen(),
    );
  }
}

class SmsNotSentListScreen extends StatelessWidget {
  final List<String> rollNumbers = ['88', '89', '99'];
  final List<String> phoneNumbers = [
    '6986758756',
    '9786776564',
    '9786875645',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resend sms'),
        surfaceTintColor: Color.fromARGB(255, 95, 22, 110),
        shadowColor: Color.fromARGB(255, 121, 24, 124),
        backgroundColor: Color.fromARGB(255, 100, 25, 123),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => StudentAttendanceApp()));
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
      body: Padding(
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
      persistentFooterButtons: [
        ElevatedButton(
          onPressed: () {Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Smssucess()));
            // Implement resend SMS functionality here
          },
          style: ElevatedButton.styleFrom(
            primary: Color.fromRGBO(109, 30, 122, 1), padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32), // Adjust padding
    textStyle: TextStyle(fontSize: 20), // Change color to purple
          ),
          child: Text('Resend SMS',)
          ,
        ),Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.asset(
                      "assets/sms.png", // Replace with your asset image path
                      height: 300,width: 1000, // Adjust the height as needed
                    ),
                  ],
                ),
      ],
    );
  }
}
