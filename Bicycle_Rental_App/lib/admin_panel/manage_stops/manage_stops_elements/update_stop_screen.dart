import 'package:flutter/material.dart';
import 'stop.dart';

class UpdateStopScreen extends StatelessWidget {
  final List<Stop> stops;

  const UpdateStopScreen({super.key, required this.stops});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Stop Details'),
        backgroundColor: Colors.deepPurple,
      ),
      body: const Center(
        child: Text(
          'Update Stop Functionality Here',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

