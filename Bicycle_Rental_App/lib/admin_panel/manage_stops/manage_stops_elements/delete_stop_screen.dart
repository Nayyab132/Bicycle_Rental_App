import 'package:flutter/material.dart';
import 'stop.dart'; 

class DeleteStopScreen extends StatelessWidget {
  final List<Stop> stops;

  const DeleteStopScreen({super.key, required this.stops});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Delete Stop'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(
          itemCount: stops.length,
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: ListTile(
                title: Text(stops[index].name),
                trailing: IconButton(
                  icon: const Icon(Icons.delete, color: Colors.red),
                  onPressed: () {
                    // Implement delete functionality here
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

