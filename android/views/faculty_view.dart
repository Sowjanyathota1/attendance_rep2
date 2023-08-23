import 'package:andriod/views/home_view.dart';
import 'package:andriod/views/registration_view.dart';
import 'package:flutter/material.dart';

//import 'home_view.dart';
import 'login_view.dart';

class Faculty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor:
              Color.fromARGB(255, 163, 60, 170), // Dark purple color
          title: Center(
            child: Text(
              'Faculty Page',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                  "https://cdni.iconscout.com/illustration/premium/thumb/female-teacher-giving-online-lecture-2995914-2493767.png"
                  // Replace with your logo image path

                  ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Register()));
                  // Handle Register button tap
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 136, 42, 136),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  textStyle: TextStyle(fontSize: 25),
                ),
                child: Text('Register'),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                  // Handle Login button tap
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 136, 42, 136),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  textStyle: TextStyle(fontSize: 25),
                ),
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
