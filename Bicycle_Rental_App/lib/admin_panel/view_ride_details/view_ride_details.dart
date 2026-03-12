import 'package:flutter/material.dart';

class ViewRideDetailsScreen extends StatelessWidget {
  const ViewRideDetailsScreen({super.key}); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('View Ride Details'),
        backgroundColor: Colors.deepPurple,
      ),
      body: const Padding(
        
        padding: EdgeInsets.all(20.0), 
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             
              Text(
                'Ride Details',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 20),
             
              Text('No ride details available.'),
            ],
          ),
        ),
      ),
    );
  }
}

