import 'package:andriod/views/selectsms.view.dart';
import 'package:andriod/views/settings_view.dart';
import 'package:flutter/material.dart';
//import 'sent_view.dart';
import 'home_view.dart';

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Admin Login',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: AdminLoginPage(),
    );
  }
}

class AdminLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Admin Login Page')), // Centered title
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home()));
            // Handle going back
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Settings()));
              // Handle going to home screen
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "https://thumbs.dreamstime.com/b/web-269421750.jpg",
                scale: 1.0,
                fit: BoxFit.cover,
              ),

              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  labelText: 'Admin Name',
                  hintText: "enter your name",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: 'Password',
                  hintText: "enter your password",
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              SizedBox(height: 10), // Adjust spacing as needed
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.school),
                  labelText: 'Branch',
                  hintText: "enter your branch",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Selectsms()));
                  // Handle login submission
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//"https://e7.pngegg.com/pngimages/114/356/png-clipart-time-student-recruitment-learning-professional-others-service-vector-icons.png",
                