import 'package:flutter/material.dart';
import 'activity_screen.dart'; // อ้างอิงไปยังไฟล์ activity_screen
import 'profile_screen.dart'; // อ้างอิงไปยังไฟล์ profile_screen

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Set background color to black
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Dashboard'),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()), // ไปที่หน้าโปรไฟล์
              );
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Profile icon at the top
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.cyan,
              child: Icon(
                Icons.person,
                size: 80,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 40),
            
            // Activity buttons with icons and "+" action button
            ActivityRow(
              icon: Icons.directions_run, // Running icon
              text: 'RUNNING',
              onActivityTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ActivityScreen(activity: 'Running')),
                );
              },
            ),
            SizedBox(height: 20),
            ActivityRow(
              icon: Icons.pool, // Swimming icon
              text: 'SWIMMING',
              onActivityTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ActivityScreen(activity: 'Swimming')),
                );
              },
            ),
            SizedBox(height: 20),
            ActivityRow(
              icon: Icons.directions_bike, // Cycling icon
              text: 'CYCLING',
              onActivityTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ActivityScreen(activity: 'Cycling')),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

// Custom widget to handle each activity row
class ActivityRow extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onActivityTap;

  ActivityRow({required this.icon, required this.text, required this.onActivityTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton.icon(
            onPressed: onActivityTap,
            icon: Icon(icon, size: 40), // Activity icon
            label: Text(text),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber, // Yellow background
              padding: EdgeInsets.symmetric(vertical: 20), // Adjust padding
              textStyle: TextStyle(fontSize: 20), // Button text size
            ),
          ),
        ),
        SizedBox(width: 10), // Space between button and "+" icon
        FloatingActionButton(
          onPressed: () {
            // Handle "+" button action
          },
          backgroundColor: Colors.blue, // Blue "+" button
          child: Icon(Icons.add, size: 30), // "+" icon
        ),
      ],
    );
  }
}
