import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Background color as per image
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Transparent AppBar
        elevation: 0, // No shadow under AppBar
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.red), // Red back icon
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.phone_android, color: Colors.pink), // Pink icon on right
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center vertically
          children: [
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.cyan, // Profile icon background color
              ),
              child: Icon(
                Icons.person,
                size: 100,
                color: Colors.black, // Icon inside the profile circle
              ),
            ),
            SizedBox(height: 20), // Space between elements
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                  labelStyle: TextStyle(color: Colors.white),
                  filled: true,
                  fillColor: Colors.black, // Black background
                ),
                style: TextStyle(color: Colors.white), // White text input color
              ),
            ),
            SizedBox(height: 20),
            // Beats Per Minute KM
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.orange, width: 3),
              ),
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    'Beats Per Minute [Km]',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    '3.7',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Beats Per Minute BPM
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.yellow, width: 3),
              ),
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    'Beats Per Minute [BPM]',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    '101',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
