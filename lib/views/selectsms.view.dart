import 'package:andriod/views/home_view.dart';
import 'package:andriod/views/sent_view.dart';
import 'package:andriod/views/settings_view.dart';
//import 'package:animator/animator.dart';
import 'package:flutter/material.dart';

class Selectsms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(  title: Text('select your sms details :)',),     
      backgroundColor: Colors.purple,
        leading: IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Settings()));
            // Handle back button press
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
              // Handle home icon press
            },
          ),
        ],
      ),
      
      body: Center( 
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/lavendor.png"
                  ),
                  fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton<String>(
              value: 'DS',style: TextStyle(       color: Color.fromARGB(255, 194, 82, 192),fontSize: 20),

              onChanged: (newValue) {
                SizedBox(
                  height: 30,);
                  
                // Handle branch dropdown change
              },
               itemHeight: 100, // Set the height of the dropdown items
              isDense: false, 
              items: <String>['DS', 'IT'].map<DropdownMenuItem<String>>(
                (String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(color: Color.fromARGB(255, 61, 60, 61)),
                    ),
                  );
                },
              ).toList(),
            ),
            DropdownButton<String>(
              value: 'A',style: TextStyle(       color: Color.fromARGB(255, 214, 211, 214),fontSize: 20),
              onChanged: (newValue) {
                // Handle section dropdown change
              },
               itemHeight: 100, // Set the height of the dropdown items
              isDense: false,
                            items: <String>['A', 'B'].map<DropdownMenuItem<String>>(
                (String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(color: Color.fromARGB(255, 54, 54, 54)),
                    ),
                  );
                },
              ).toList(),
            ),
            SizedBox(height: 150),
            ElevatedButton(
              onPressed: () { Navigator.push(
                  context, MaterialPageRoute(builder: (context) => StudentAttendanceApp()));
                // Handle submit button press
              },
              child: Text('Submit'),
              
              style: ElevatedButton.styleFrom(
                                primary: Colors.purple,
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}
