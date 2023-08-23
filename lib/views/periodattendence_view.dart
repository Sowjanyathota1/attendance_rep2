import 'package:andriod/views/add_view.dart';
import 'package:andriod/views/faculty_view.dart';
import 'package:andriod/views/home_view.dart';
import 'package:andriod/views/remove_view.dart';
import 'package:andriod/views/selection_view.dart';
import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  bool addRegulation = false;
  bool addBranch = false;
  bool addPeriod = false;
  bool addSubject = false;

  bool removeRegulation = false;
  bool removeBranch = false;
  bool removePeriod = false;
  bool removeSubject = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 147, 45, 160),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Faculty()));
              // Handle back button tap
            },
          ),
          title: Text(
            'Faculty Page',
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  "https://icon-library.com/images/attendance-icon/attendance-icon-7.jpg",
                  width: 200,
                  height: 200,
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Selection()));
                    // Handle period attendance button tap
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 142, 57, 135),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    textStyle: TextStyle(fontSize: 15),
                  ),
                  child: Text(
                    'Period Attendance',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Add()));
                    // Handle ADD button tap
                    print('ADD - Regulation: $addRegulation');
                    print('ADD - Branch: $addBranch');
                    print('ADD - Period: $addPeriod');
                    print('ADD - Subject: $addSubject');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 168, 71, 160),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    textStyle: TextStyle(fontSize: 15),
                  ),
                  child: Text(
                    'ADD',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                SizedBox(height: 10),
                CheckboxListTile(
                  title: Text('Regulation'),
                  value: addRegulation,
                  onChanged: (value) {
                    setState(() {
                      addRegulation = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text('Branch'),
                  value: addBranch,
                  onChanged: (value) {
                    setState(() {
                      addBranch = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text('Period'),
                  value: addPeriod,
                  onChanged: (value) {
                    setState(() {
                      addPeriod = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text('Subject'),
                  value: addSubject,
                  onChanged: (value) {
                    setState(() {
                      addSubject = value!;
                    });
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Remove()));
                    // Handle REMOVE button tap
                    print('REMOVE - Regulation: $removeRegulation');
                    print('REMOVE - Branch: $removeBranch');
                    print('REMOVE - Period: $removePeriod');
                    print('REMOVE - Subject: $removeSubject');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 168, 71, 160),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    textStyle: TextStyle(fontSize: 15),
                  ),
                  child: Text('REMOVE'),
                ),
                SizedBox(height: 20),
                CheckboxListTile(
                  title: Text('Regulation'),
                  value: removeRegulation,
                  onChanged: (value) {
                    setState(() {
                      removeRegulation = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text('Branch'),
                  value: removeBranch,
                  onChanged: (value) {
                    setState(() {
                      removeBranch = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text('Period'),
                  value: removePeriod,
                  onChanged: (value) {
                    setState(() {
                      removePeriod = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text('Subject'),
                  value: removeSubject,
                  onChanged: (value) {
                    setState(() {
                      removeSubject = value!;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
