import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'admin_dashboard.dart' as admin;
import 'user_dashboard.dart' as user;

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Ensure Flutter binding is initialized
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyBqxS5JdNSwCnHi2-jtNlgDTQxQukD_nEk",
        authDomain: "an-hourly-bicycle-rental-dfb5c.firebaseapp.com",
        projectId: "an-hourly-bicycle-rental-dfb5c",
        storageBucket: "an-hourly-bicycle-rental-dfb5c.appspot.com",
        messagingSenderId: "843652044606",
        appId: "1:843652044606:web:5e27ec79465d00f0c0be6f",
        measurementId: "G-NPFLQ964N5",
      ),
    );
  } else {
    await Firebase.initializeApp(); // Use default initialization for mobile
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'An Hourly Bicycle Rental App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Delay for 3 seconds before navigating to the main app
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Colors.deepPurple, // Background color of the splash screen
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.bike_scooter, // Use a bike-related icon
              size: 100,
              color: Colors.white,
            ),
            const SizedBox(height: 20),
            const Text(
              'Hourly Bicycle Rental',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const CircularProgressIndicator(color: Colors.white),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hourly Bicycle Rental App'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildDashboardCard(
              context,
              'Admin Dashboard',
              Icons.admin_panel_settings,
              Colors.redAccent,
              () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const admin.AdminDashboard(),
                ),
              ),
            ),
            const SizedBox(height: 20),
            buildDashboardCard(
              context,
              'User Dashboard',
              Icons.person,
              Colors.blueAccent,
              () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const user.UserDashboard(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDashboardCard(BuildContext context, String title, IconData icon,
      Color iconColor, VoidCallback onTap) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 60, color: iconColor),
              const SizedBox(height: 10),
              Text(
                title,
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
