// login_screen.dart
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:developer';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void _login() async {
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();
    if (email == "" || password == "") {
      log("Please fill all the details");
    } else {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email, password: password);
        if (userCredential.user != null) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text('Login successful!'),
            duration: Duration(seconds: 2), // Adjust the duration as needed
          ));
        }
      } on FirebaseAuthException catch (ex) {
        if (ex.code.toString() == 'INVALID_LOGIN_CREDENTIALS') {
          // Email is already registered, show a snackbar with the message
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Wrong Email or password !!'),
              duration: Duration(seconds: 2), // Adjust the duration as needed
            ),
          );
        }
        log(ex.code.toString());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: <Widget>[
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(labelText: 'Email'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your email';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _passwordController,
              decoration: const InputDecoration(labelText: 'Password'),
              obscureText: true,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your password';
                }
                return null;
              },
            ),
            ElevatedButton(
              onPressed: _login,
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
