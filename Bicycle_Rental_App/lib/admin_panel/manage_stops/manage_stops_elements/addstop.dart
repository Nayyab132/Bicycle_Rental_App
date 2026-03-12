import 'package:flutter/material.dart';

class AddStopScreen extends StatelessWidget {
  const AddStopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController descriptionController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Stop'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Stop Name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: descriptionController,
              decoration: const InputDecoration(
                labelText: 'Stop Description',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle adding stop logic (you can store it in a state management solution)
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Stop Added')),
                );
                // You might want to pop the screen or reset the text fields here
              },
              child: const Text('Add Stop'),
            ),
          ],
        ),
      ),
    );
  }
}
