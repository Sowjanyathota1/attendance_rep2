import 'package:andriod/views/privacy_view.dart';
import 'package:andriod/views/remove_view.dart';
import 'package:andriod/views/selectsms.view.dart';
import 'package:flutter/material.dart';

import 'add_view.dart';
//import 'adminhome_view.dart';
import 'home_view.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Selectsms()));
            // Implement going back
          },
        ),
        title: Center(
          child: Text('Settings'),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
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
                  image: AssetImage(
                    "assets/frame2.jpg"
                  ),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Privacy()));
                  // Implement privacy button onPressed action
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 224, 148, 237),
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                ),
                icon: Icon(Icons.privacy_tip),
                label: Text(
                  'Privacy',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Remove()));
                  // Implement remove button onPressed action
                },
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 212, 150, 223),
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                ),
                icon: Icon(Icons.delete),
                label: Text(
                  'Remove',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Add()));
                  // Implement add details button onPressed action
                },
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 215, 141, 228),
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                ),
                icon: Icon(Icons.add),
                label: Text(
                  'Add Details',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
