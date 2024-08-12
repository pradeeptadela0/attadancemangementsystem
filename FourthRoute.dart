import 'package:flutter/material.dart';
import 'package:attendancemanagementsystem/ThirdRoute.dart';
import 'SecondRoute.dart';
void main() {
  runApp(Fourthroute());
}

class Fourthroute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String selectedYear = '2';
  String selectedSection = 'CSE-A';
  String selectedSubject = 'JAVA_PRG';
  List<String> selectedHours = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Attendance Tracker'),actions: <Widget>[
        PopupMenuButton<String>(
          onSelected: (String result) {
            // Handle the selected item
            print(result);
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            const PopupMenuItem<String>(
              value: 'Option 1',
              child: Text('Profile'),
            ),
            const PopupMenuItem<String>(
              value: 'Option 2',
              child: Text('Settings'),
            ),
            const PopupMenuItem<String>(
              value: 'Option 3',
              child: Text('Help'),
            ),
            const PopupMenuItem<String>(
              value: 'Option 3',
              child: Text('Log out'),),
          ],
        ),
      ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text( "selectedDate"),
            SizedBox(height: 16),
            buildDropdown('Year', ['1', '2', '3', '4'], selectedYear, (value) {
              setState(() {
                selectedYear = value!;
              });
            }),
            buildDropdown('Section', ['CSE-A', 'CSE-B', 'CSE-C'], selectedSection, (value) {
              setState(() {
                selectedSection = value!;
              });
            }),
            buildDropdown('Subject', ['JAVA_PRG', 'C++_PRG', 'DSA'], selectedSubject, (value) {
              setState(() {
                selectedSubject = value!;
              });
            }),
            SizedBox(height: 16),
            Text('Selected Hour(s): ${selectedHours.isEmpty ? 'None' : selectedHours.join(', ')}'),
            SizedBox(height: 14),
            buildDropdown('Hours', ['1', '2', '3', '4'], selectedYear, (value) {
              setState(() {
                selectedYear = value!;
              });
            }),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=>ThirdRoute()),);
                // Within the `FirstRoute` widget:
                // Add sign-in logic here
              },
              child: Text('Proceed'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue,


              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDropdown(String label, List<String> items, String selectedValue, Function(String?) onChanged) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(label),
        SizedBox(height: 8),
        DropdownButton<String>(
          isExpanded: true,
          value: selectedValue,
          onChanged: onChanged,
          items: items.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ],
    );
  }
}


