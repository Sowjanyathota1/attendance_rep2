import 'package:andriod/views/home_view.dart';
import 'package:andriod/views/student_view.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

//import 'home_view.dart';

class CumulativeAttendanceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cumulative Attendance',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => StudentPage()));
            // Handle back button press
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
              // Handle home button press
            },
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: BarChart(
                BarChartData(
                  alignment: BarChartAlignment.spaceAround,
                  titlesData: FlTitlesData(
                    leftTitles: SideTitles(showTitles: true),
                    bottomTitles: SideTitles(showTitles: true),
                  ),
                  barGroups: [
                    BarChartGroupData(
                      x: 0,
                      barRods: [
                        BarChartRodData(y: 3),
                      ],
                    ),
                    BarChartGroupData(
                      x: 1,
                      barRods: [
                        BarChartRodData(y: 5),
                      ],
                    ),
                    BarChartGroupData(
                      x: 2,
                      barRods: [
                        BarChartRodData(y: 6),
                      ],
                    ),
                    BarChartGroupData(
                      x: 3,
                      barRods: [
                        BarChartRodData(y: 2),
                      ],
                    ),
                    // Add more BarChartGroupData for other subjects
                  ],
                  borderData: FlBorderData(
                    show: true,
                  ),
                  gridData: FlGridData(
                    show: true,
                  ),
                  axisTitleData: FlAxisTitleData(
                    leftTitle: AxisTitle(showTitle: true),
                    bottomTitle: AxisTitle(showTitle: true),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
