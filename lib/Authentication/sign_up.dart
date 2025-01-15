import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Title
              Text(
                'Sign up',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, fontFamily: 'Chivo'),
              ),
              SizedBox(height: 8),
              Text(
                'Make the most of your professional life',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14.0, color: Colors.grey[600], fontFamily: 'Chivo'),
              ),
              SizedBox(height: 32),

              // Name Field
              TextField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              SizedBox(height: 16),

              // Email Field
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              SizedBox(height: 16),

              // Password Field
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              SizedBox(height: 16),

              // Confirm Password Field
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              SizedBox(height: 16),

              // Sign-Up Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 14.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  // Handle sign-up
                },
                child: Text(
                  'Sign up',
                  style: TextStyle(fontSize: 16.0, color: Colors.white, fontFamily: 'Chivo'),
                ),
              ),
              SizedBox(height: 16),

              // Already have an account? Link
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/sign-in');
                },
                child: Text(
                  'Already have an account? Sign in',
                  style: TextStyle(color: Colors.black, fontFamily: 'Chivo'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}