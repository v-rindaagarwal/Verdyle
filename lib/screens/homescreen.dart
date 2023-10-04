import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to EnergySage'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Empowering Solar Energy Decisions',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Discover the benefits of solar energy and find the perfect installer for your needs.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Add navigation or action here
              },
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              ),
              child: const Text(
                'Get Started',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(height: 20), // Add spacing
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 30,
                ),
                SizedBox(width: 5),
                Text(
                  '4.8',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(width: 10),
                Text(
                  '(1,234 Reviews)',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 20), // Add spacing
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.location_on,
                  size: 30,
                ),
                SizedBox(width: 5),
                Text(
                  'Find Installers Near You',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            const SizedBox(height: 20), // Add spacing
            const Text(
              'Why Choose EnergySage?',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10), // Add spacing
            const Text(
              'EnergySage is the leading online comparison-shopping marketplace for solar energy.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        )));
  }
}
