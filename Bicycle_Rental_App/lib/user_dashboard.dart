import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'register_page.dart'; 

class UserDashboard extends StatefulWidget {
  const UserDashboard({super.key});

  @override
  UserDashboardState createState() => UserDashboardState();
}

class UserDashboardState extends State<UserDashboard> {
  bool isSignedIn = false; // Track if the user is signed in
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Method to simulate signing in with email/password
  void signIn() async {
    String email = usernameController.text.trim();
    String password = passwordController.text.trim();

    // Use Firebase Authentication to sign in
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      // If the sign-in is successful, set the state
      if (userCredential.user != null) {
        setState(() {
          isSignedIn = true; // Mark user as signed in
        });

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Signed in successfully!')),
        );
      }
    } on FirebaseAuthException catch (e) {
      // Handle sign-in errors
      String errorMessage;
      switch (e.code) {
        case 'user-not-found':
          errorMessage = 'No user found for that email.';
          break;
        case 'wrong-password':
          errorMessage = 'Wrong password provided.';
          break;
        default:
          errorMessage = 'Error: ${e.message}';
      }

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(errorMessage)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: isSignedIn ? buildDashboard() : buildSignInForm(),
      ),
    );
  }

  // Build the sign-in form
  Widget buildSignInForm() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Sign In',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 30),
        TextField(
          controller: usernameController,
          decoration: const InputDecoration(
            labelText: 'Username or Email',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 20),
        TextField(
          controller: passwordController,
          obscureText: true,
          decoration: const InputDecoration(
            labelText: 'Password',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: signIn,
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Text('Sign In'),
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: () {
            // Navigate to forgot password page
          },
          child: const Text('Forgot Password?'),
        ),
        const SizedBox(height: 10),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const RegisterPage()),
            );
          },
          child: const Text("Don't have an account? Register"),
        ),
      ],
    );
  }

  // Build the user dashboard UI
  Widget buildDashboard() {
    return const Center(
      child: Text(
        'Welcome to the User Dashboard!',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}

