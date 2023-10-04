import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:solar_power/screens/homescreen.dart';
import 'package:solar_power/screens/signinwithphone.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:solar_power/screens/auth_screen.dart';
import 'package:solar_power/screens/login_screen.dart';
import 'package:solar_power/screens/register_screen.dart';
import 'package:solar_power/screens/calculator_power.dart';
import 'package:solar_power/screens/homescreen.dart';
import 'package:solar_power/screens/dashboard.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Your App Name', home: HomeScreen());
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}
