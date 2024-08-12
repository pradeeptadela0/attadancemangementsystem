import 'package:flutter/material.dart';
import 'package:attendancemanagementsystem/SecondRoute.dart';
import 'package:attendancemanagementsystem/Nine.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ace Attadance Mangement system',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(''),
                ),
                SizedBox(height: 20),
                Text(
                  'ATTENDANCE-APP',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,color: Colors.lightBlue
                  ),
                ),
                Text(
                  'Login To your Account',
                  style: TextStyle(
                    fontSize: 16,
                      fontWeight: FontWeight.bold, color:Colors.lightBlue
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.visibility_off),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>Secondroute()),
                    );// Within the `FirstRoute` widget:
                    // Add sign-in logic here
                  },
                  child: Text('Sign In'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlue,
                  ),
                ),

              TextButton(onPressed: (){}, child: Text('or'),style: TextButton.styleFrom(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),),
                SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    // Add back button logic here
                  },
                  child: Text('Continue with GOOGLE'),
                  style: TextButton.styleFrom(foregroundColor: Colors.lightBlue, textStyle: TextStyle(
                    fontSize: 16,fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
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
