import 'package:andriod/views/selection_view.dart';
import 'package:flutter/material.dart';

import 'periodattendence_view.dart';
import 'home_view.dart';

class Remove extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 207, 101, 198), // Purple color
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Post()));
            // Handle back button tap
          },
        ),
        title: Text(
          'Remove',
          style: TextStyle(
            fontSize: 25,
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
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/frame2.jpg"), fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 234, 229, 234),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    hintText: 'Regulation',
                    hintStyle: TextStyle(color: Colors.black),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 300,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 234, 229, 234),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    hintText: 'Branch',
                    hintStyle: TextStyle(color: Colors.black),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Selection()));
                  // Handle REMOVE button tap
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 177, 70, 161),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  textStyle: TextStyle(fontSize: 20, color: Colors.black),
                ),
                child: Text('REMOVE'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
