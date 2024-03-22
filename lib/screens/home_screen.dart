import 'package:flutter/material.dart';
import 'package:gymglide/screens/login_screen.dart';
import 'package:gymglide/screens/register_screen.dart'; // Import the RegisterScreen

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GymGlide'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to GymGlide',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Image.asset(
              'assets/images/gym_glide_logo.jpg',
              width: 150.0,
              height: 150.0,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 40.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Text('Login'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 16.0),
                textStyle: TextStyle(fontSize: 18.0),
              ),
            ),
            SizedBox(height: 20.0), // Add some space between the buttons and the text
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterScreen()), // Navigate to the RegisterScreen
                );
              },
              child: Text(
                "Not a user? Register here",
                style: TextStyle(
                  color: Colors.blue, // Change the text color to blue
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
