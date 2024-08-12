import 'package:flutter/material.dart';
import 'package:attendancemanagementsystem/Five.dart';
import 'package:attendancemanagementsystem/FourthRoute.dart';
void main(){
  runApp(ThirdRoute());
}
class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Ace engineering college'),
        actions: [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () { Navigator.push(context,
              MaterialPageRoute(builder: (context)=> Fourthroute()),);
              // Handle close button press
            },
          ),
          // ... other action buttons
        ],
      ),
      body: Center(
        child: Column(
          children: [
            // Grid of student buttons
            Expanded(
              child: GridView.count(
                crossAxisCount: 5, // Adjust based on desired grid layout
                children: List.generate(
                  30, // Replace with actual number of students
                      (index) => StudentButton(),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {Navigator.push(context,
                MaterialPageRoute(builder: (context)=> Five()),
              );
                // Handle student attendance button press
              },
              child: Text(' Proceed'),style: ElevatedButton.styleFrom(
              backgroundColor: Colors.lightBlue,
              minimumSize: Size(double.infinity, 50),
            ),
            ),
          ],
        ),
      ),
    );
  }
}

class StudentButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.green, // Replace with desired color
      ),
      child: Center(
        child: Text('P'),
        // Replace with student initials
      ),
    );
  }
}
