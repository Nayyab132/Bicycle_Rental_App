import 'package:flutter/material.dart';
import 'manage_stops/manage_stops.dart'; // Update this import path
import 'manage_bikes/manage_bikes.dart';
import 'view_ride_details/view_ride_details.dart';
import 'view_user_details/view_user_details.dart';

class AdminMenu extends StatelessWidget {
  const AdminMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Menu'),
        backgroundColor: const Color(0xFF9867C5),
      ),
      backgroundColor:
          const Color.fromARGB(255, 234, 231, 236), // Iris background color
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(
                    double.infinity, 60), // Full-width button with height
                padding: const EdgeInsets.symmetric(
                    vertical: 15), // Vertical padding
                textStyle: const TextStyle(
                    fontSize: 18, color: Colors.black), // Black text
                backgroundColor: Colors.purple[100], // Light purple background
              ),
              onPressed: () {
                // Navigate to Manage Stops
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ManageStopsScreen(),
                  ),
                );
              },
              child: const Text('Manage Stops'),
            ),
            const SizedBox(height: 30), // Increased spacing
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 60),
                padding: const EdgeInsets.symmetric(vertical: 15),
                textStyle: const TextStyle(
                    fontSize: 18, color: Colors.black), // Black text
                backgroundColor: Colors.purple[100], // Light purple background
              ),
              onPressed: () {
                // Navigate to Manage Bikes
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ManageBikesScreen(),
                  ),
                );
              },
              child: const Text('Manage Bikes'),
            ),
            const SizedBox(height: 30), // Increased spacing
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 60),
                padding: const EdgeInsets.symmetric(vertical: 15),
                textStyle: const TextStyle(
                    fontSize: 18, color: Colors.black), // Black text
                backgroundColor: Colors.purple[100], // Light purple background
              ),
              onPressed: () {
                // Navigate to View Ride Details
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ViewRideDetailsScreen(),
                  ),
                );
              },
              child: const Text('View Ride Details'),
            ),
            const SizedBox(height: 30), // Increased spacing
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 60),
                padding: const EdgeInsets.symmetric(vertical: 15),
                textStyle: const TextStyle(
                    fontSize: 18, color: Colors.black), // Black text
                backgroundColor: Colors.purple[100], // Light purple background
              ),
              onPressed: () {
                // Navigate to View User Details
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ViewUserDetailsScreen(),
                  ),
                );
              },
              child: const Text('View User Details'),
            ),
          ],
        ),
      ),
    );
  }
}
