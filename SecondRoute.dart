import 'package:attendancemanagementsystem/Five.dart';
import 'package:attendancemanagementsystem/ThirdRoute.dart';
import 'package:flutter/material.dart';
import 'package:attendancemanagementsystem/FourthRoute.dart';
import 'package:attendancemanagementsystem/seven.dart';
import 'package:attendancemanagementsystem/Eight.dart';
import 'package:attendancemanagementsystem/Nine.dart';
void main() {
  runApp(Secondroute());
}

class Secondroute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ACE Engineering college'),
          actions: [
            PopupMenuButton<String>(
              onSelected: (value) {
                if (value == 'FourthRoute') {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Fourthroute()),);
                } else if (value == 'Five') {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Five()),);
                }
                else if (value == 'ThirdRoute') {
                  Navigator.push(context,
                MaterialPageRoute(builder: (context)=>ThirdRoute()),
                );
                }
                else if (value == 'Eight') {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Eight()),);
                }
              },
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(
                    value: 'FourthRoute',
                    child: Text('MArk Attadance'),
                  ),
                  PopupMenuItem(
                    value: 'Five',
                    child: Text('check Data'),
                  ),
                  PopupMenuItem(
                    value: 'ThirdRoute',
                    child: Text('Addtional Class'),
                  ),PopupMenuItem(
                    value: 'Eight',
                    child: Text('Profile'),
                  ),
                ];
              },
                icon: Icon(Icons.menu),
       ),
    ],
    ),
      body: Center(
        child: Padding(

          padding: const EdgeInsets.all(16.0),

          child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage('https://www.facebook.com/acekukatpally/'),
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Welcome',
                  style: TextStyle(fontSize: 20, color: Colors.blueAccent,
                  ),
                ),
              ),
            ],
          ),
        ),
        ),
      ),
    );

  }
}
