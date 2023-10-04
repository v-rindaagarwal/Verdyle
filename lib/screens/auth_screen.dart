// auth_screen.dart
import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Authentication'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Navigate to the login screen
                Navigator.of(context).pushNamed('/login');
              },
              child: Text('Login'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to the registration screen
                Navigator.of(context).pushNamed('/register');
              },
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
