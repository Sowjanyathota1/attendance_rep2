import 'package:flutter/material.dart';

import 'periodattendence_view.dart';
import 'faculty_view.dart';
import 'home_view.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor:
              Color.fromARGB(255, 110, 25, 111), // Dark purple color
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Faculty()));
              // Handle back button tap
            },
          ),
          title: Text(
            'Login Page',
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                    "https://media.istockphoto.com/id/1212272730/vector/vector-illustration-online-education-or-e-learning-concept.jpg?s=612x612&w=0&k=20&c=BX-o7e8LrnUto1JSKI0suRQoB1xW1HVsVibaMey_sts="),
                _buildTextFieldWithIcon(Icons.mail, 'Email'),
                SizedBox(height: 20),
                _buildTextFieldWithIcon(Icons.lock, 'Password',
                    isPassword: true),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Post()));
                    // Handle submit button tap
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 113, 30, 110),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    textStyle: TextStyle(fontSize: 18),
                  ),
                  child: Text('Login'),
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
