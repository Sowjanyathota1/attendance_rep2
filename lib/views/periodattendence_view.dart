import 'package:andriod/views/add_view.dart';
import 'package:andriod/views/home_view.dart';
import 'package:andriod/views/login_view.dart';
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
                context, MaterialPageRoute(builder: (context) => Login()));
            // Implement going back
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
              onPressed: () {Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Home()));
            // Handle back button tap
          
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
                  width: 400,
                  height: 400,
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Selection()));
            // Handle back button tap
          
                        // Handle period attendance button tap
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 142, 57, 135),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        textStyle: TextStyle(fontSize: 15),
                      ),
                      child: Text(
                        'Period Attendance',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    SizedBox(width: 20),
                    ElevatedButton(
                      onPressed: () {Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Add()));
                        // Handle ADD button tap
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 168, 71, 160),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        textStyle: TextStyle(fontSize: 15),
                      ),
                      child: Text(
                        'ADD',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    SizedBox(width: 20),
                    ElevatedButton(
                      onPressed: () {Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Remove()));
                        // Handle REMOVE button tap
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 168, 71, 160),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        textStyle: TextStyle(fontSize: 15),
                      ),
                      child: Text('REMOVE'),
                    ),
                  ],
                ),
                SizedBox(height: 20),
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
                ),Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.asset(
                      "assets/frame2.jpg", // Replace with your asset image path
                      height: 100,width: 1000, // Adjust the height as needed
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
