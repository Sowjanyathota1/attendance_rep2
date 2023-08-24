import 'package:andriod/views/login_view.dart';
import 'package:flutter/material.dart';

//import 'periodattendence_view.dart';
import 'faculty_view.dart';
import 'home_view.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor:
              Color.fromARGB(255, 133, 38, 132), // Dark purple color
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Faculty()));
              // Handle back button tap
            },
          ),
          title: Text(
            'Registration Form',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  "https://media.istockphoto.com/id/1227150854/vector/learn-from-distance-with-teacher-online-education-kids-boy-and-girl-is-sitting-on-laptop-and.jpg?s=612x612&w=0&k=20&c=wPYqFgjGpi9m6BWwKw-Bsz76oqfd0m-hFJcxNyccyMM=",
                  fit: BoxFit.contain,
                ),
                _buildTextFieldWithIcon(Icons.person, 'User name'),
                SizedBox(height: 8),
                _buildTextFieldWithIcon(Icons.pin, 'Code'),
                SizedBox(height: 10),
                _buildTextFieldWithIcon(Icons.mail, 'G-mail'),
                SizedBox(height: 10),
                _buildTextFieldWithIcon(Icons.lock, 'Password',
                    isPassword: true),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                    // Handle submit button tap
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 125, 33, 119),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    textStyle: TextStyle(fontSize: 18),
                  ),
                  child: Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextFieldWithIcon(IconData icon, String hintText,
      {bool isPassword = false}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        obscureText: isPassword,
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          hintText: hintText,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
