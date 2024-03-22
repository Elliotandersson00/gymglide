import 'package:flutter/material.dart';
import 'package:gymglide/screens/home_screen.dart'; // Import the HomeScreen widget

void main() {
  runApp(MyApp()); // Run the MyApp widget as the root of the Flutter app
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GymGlide',
      home: HomeScreen(), // Set the HomeScreen widget as the home screen of the app
    );
  }
}
