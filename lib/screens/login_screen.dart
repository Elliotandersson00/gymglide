// lib/screens/login_screen.dart

import 'package:flutter/material.dart';
import 'package:gymglide/models/user.dart'; // Import the User model

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: LoginForm(), // Display the login form
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          controller: _usernameController,
          decoration: InputDecoration(
            labelText: 'Username',
          ),
        ),
        SizedBox(height: 20.0),
        TextField(
          controller: _passwordController,
          decoration: InputDecoration(
            labelText: 'Password',
          ),
          obscureText: true, // Hide password text
        ),
        SizedBox(height: 20.0),
        ElevatedButton(
          onPressed: () {
            // Retrieve username and password from text controllers
            String username = _usernameController.text;
            String password = _passwordController.text;

            // Create a User object with the provided credentials
            User user = User(username: username, password: password);

            // Perform login authentication logic (e.g., validate credentials)
            // You can handle the authentication logic here or call a separate method from a service class
            // For demonstration purposes, we'll just print the user credentials
            print('Username: ${user.username}, Password: ${user.password}');
          },
          child: Text('Login'),
        ),
      ],
    );
  }

  @override
  void dispose() {
    // Clean up text editing controllers
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
