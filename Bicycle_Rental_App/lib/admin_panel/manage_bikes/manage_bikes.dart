import 'package:flutter/material.dart';

class ManageBikesScreen extends StatelessWidget {
  const ManageBikesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage Bikes'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Manage Bikes',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                textStyle: const TextStyle(fontSize: 18),
                backgroundColor: Colors.deepPurple, // Unified button color
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AddBikeScreen()),
                );
              },
              child: const Text('Add Bike'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                textStyle: const TextStyle(fontSize: 18),
                backgroundColor: Colors.deepPurple,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const UpdateBikeScreen()),
                );
              },
              child: const Text('Update Bike Details'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                textStyle: const TextStyle(fontSize: 18),
                backgroundColor: Colors.deepPurple,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RemoveBikeScreen()),
                );
              },
              child: const Text('Remove Bike'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                textStyle: const TextStyle(fontSize: 18),
                backgroundColor: Colors.deepPurple,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ViewBikesScreen()),
                );
              },
              child: const Text('View Bikes'),
            ),
          ],
        ),
      ),
    );
  }
}

// Placeholder screens for navigation
class AddBikeScreen extends StatelessWidget {
  const AddBikeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Bike'),
        backgroundColor: Colors.deepPurple,
      ),
      body: const Center(
        child: Text(
          'Add Bike Functionality Here',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class UpdateBikeScreen extends StatelessWidget {
  const UpdateBikeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Bike Details'),
        backgroundColor: Colors.deepPurple,
      ),
      body: const Center(
        child: Text(
          'Update Bike Details Functionality Here',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class RemoveBikeScreen extends StatelessWidget {
  const RemoveBikeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Remove Bike'),
        backgroundColor: Colors.deepPurple,
      ),
      body: const Center(
        child: Text(
          'Remove Bike Functionality Here',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class ViewBikesScreen extends StatelessWidget {
  const ViewBikesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample list of bikes (Replace with your actual data)
    final List<String> bikes = [
      'Bike 1: Mountain Bike',
      'Bike 2: Road Bike',
      'Bike 3: Hybrid Bike',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('View Bikes'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(
          itemCount: bikes.length,
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  bikes[index],
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
