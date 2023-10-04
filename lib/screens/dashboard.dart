import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue, // Customize the background color
        elevation: 4.0, // Add a shadow under the AppBar
        actions: <Widget>[
          // Add action buttons on the right side of the AppBar
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          icon: const Icon(Icons.menu), // Use an icon for a navigation drawer
          onPressed: () {},
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'No pickup scheduled for today',
            ),
            ElevatedButton(
              onPressed: () {
                // Add your button's functionality here
                //print('ElevatedButton pressed');
              },
              child: const Text('Track Location'), // Button text
            ),
          ],
        ),
      ),
    );
  }
}
