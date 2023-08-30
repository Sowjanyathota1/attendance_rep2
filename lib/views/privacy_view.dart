import 'package:andriod/views/settings_view.dart';
import 'package:flutter/material.dart';

import 'home_view.dart';

class Privacy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      home: PrivacyScreen(),
    );
  }
}

class PrivacyScreen extends StatefulWidget {
  @override
  _PrivacyScreenState createState() => _PrivacyScreenState();
}

class _PrivacyScreenState extends State<PrivacyScreen> {
  bool userAccess = true; // Default value
  bool facultyRegister = false; // Default value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Settings()),
            );
            // Implement going back
          },
        ),
        title: Center(
          child: Text('Privacy'),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
              // Implement going to home screen
            },
          ),
        ],
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/frame.jpg"), fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                title: Text(
                  'User Access',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight:
                          FontWeight.bold), // Adjust font size as needed
                ),
                trailing: Switch(
                  value: userAccess,
                  onChanged: (value) {
                    setState(() {
                      userAccess = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text(
                  'Faculty Register',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight:
                          FontWeight.bold), // Adjust font size as needed
                ),
                trailing: Switch(
                  value: facultyRegister,
                  onChanged: (value) {
                    setState(() {
                      facultyRegister = value;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
