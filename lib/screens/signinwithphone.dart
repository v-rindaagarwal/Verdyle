import 'package:flutter/material.dart';

class SignInWithPhoneNumberScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In with Phone Number'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
              decoration: InputDecoration(labelText: 'Phone Number'),
            ),
            ElevatedButton(
              onPressed: () {
                // Implement phone number verification logic here
              },
              child: const Text('Send Verification Code'),
            ),
          ],
        ),
      ),
    );
  }
}
