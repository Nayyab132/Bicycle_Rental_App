import 'package:flutter/material.dart';

class ViewRideDetailsScreen extends StatelessWidget {
  const ViewRideDetailsScreen({super.key}); // Use of super.key

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('View Ride Details'),
        backgroundColor: Colors.deepPurple,
      ),
      body: const Padding(
        // Use const here
        padding: EdgeInsets.all(20.0), // EdgeInsets is a constant
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Use const here for the children
              Text(
                'Ride Details',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 20),
              // Here you can display ride details; for now, it's just a placeholder
              Text('No ride details available.'),
            ],
          ),
        ),
      ),
    );
  }
}
