import 'package:flutter/material.dart';

class ViewUserDetailsScreen extends StatelessWidget {
  const ViewUserDetailsScreen({super.key}); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('View User Details'), 
        backgroundColor: Colors.deepPurple,
      ),
      body: const Padding(
        // Marking Padding as const
        padding: EdgeInsets.all(20.0), 
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'User Details',
                style: TextStyle(fontSize: 24), 
              ),
              SizedBox(height: 20), // Marking as const
              Text('No user details available.'), 
            ],
          ),
        ),
      ),
    );
  }
}

