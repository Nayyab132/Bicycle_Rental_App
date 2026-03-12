import 'package:flutter/material.dart';
import 'manage_stops_elements/stop.dart'; // Import the Stop model
import 'manage_stops_elements/addstop.dart';
import 'manage_stops_elements/delete_stop_screen.dart' as deleteScreen;
import 'manage_stops_elements/update_stop_screen.dart';
import 'manage_stops_elements/view_stop_screen.dart';

class ManageStopsScreen extends StatelessWidget {
  const ManageStopsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample list of stops
    final List<Stop> stops = [
      Stop(
          name: 'Central Park',
          description: 'A beautiful park in the city center.'),
      Stop(
          name: 'City Library',
          description: 'The largest library in the city.'),
      Stop(
          name: 'Main Square', description: 'A popular meeting spot downtown.'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage Stops'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepPurpleAccent, Colors.white],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildCardButton(
                  context,
                  'Add Stop',
                  Icons.add,
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AddStopScreen()),
                    );
                  },
                ),
                const SizedBox(height: 20), // Space between buttons
                _buildCardButton(
                  context,
                  'Update Stop',
                  Icons.edit,
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => UpdateStopScreen(stops: stops)),
                    );
                  },
                ),
                const SizedBox(height: 20), // Space between buttons
                _buildCardButton(
                  context,
                  'Delete Stop',
                  Icons.delete,
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              deleteScreen.DeleteStopScreen(stops: stops)),
                    );
                  },
                ),
                const SizedBox(height: 20), // Space between buttons
                _buildCardButton(
                  context,
                  'View Stops',
                  Icons.visibility,
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ViewStopsScreen(stops: stops)),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCardButton(
      BuildContext context, String text, IconData icon, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 8,
        shadowColor: Colors.black54,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width * 0.8, // 80% of screen width
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(icon, size: 30, color: Colors.deepPurple),
                  const SizedBox(width: 10), // Space between icon and text
                  Text(
                    text,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const Icon(Icons.arrow_forward_ios, color: Colors.deepPurple),
            ],
          ),
        ),
      ),
    );
  }
}
