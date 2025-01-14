import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
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
                'Sign in',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Stay updated on your professional world.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14.0, color: Colors.grey[600]),
              ),
              SizedBox(height: 32),

              // Email or Phone Field
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email or phone',
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
                  suffix: GestureDetector(
                    onTap: () {
                      // Logic to toggle password visibility
                    },
                    child: Text(
                      'Show',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              SizedBox(height: 16),

              // Forgot Password Link
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/forgot-password');
                    print('Forgot Password clicked');
                  },
                  child: Text(
                    'Forgot password?',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
              SizedBox(height: 16),

              // Sign In Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 14.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  print('Sign In clicked');
                },
                child: Text(
                  'Sign in',
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                ),
              ),
              SizedBox(height: 16),

              Row(
                children: [
                  Expanded(child: Divider()),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'or',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Expanded(child: Divider()),
                ],
              ),
              SizedBox(height: 16),

              // Create a New Account Button
              OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 14.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  side: BorderSide(color: Colors.grey),
                ),
                icon: Icon(
                  Icons.person_add, // Person icon for "Create Account"
                  size: 22.0,
                  color: Colors.blue,
                ),
                label: Text(
                  'Create a New Account',
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/sign-up');
                },
              ),
              SizedBox(height: 16),

              // Divider with "or"
              Row(
                children: [
                  Expanded(child: Divider()),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'or',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Expanded(child: Divider()),
                ],
              ),
              SizedBox(height: 16),

              // Google Sign In Button
              OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 14.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  side: BorderSide(color: Colors.grey),
                ),
                icon: Image.asset(
                  'assets/images/google_icon.png', // Google icon added here
                  height: 18.0,
                ),
                label: Text(
                  'Continue with Google',
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  print('Google Sign-In clicked');
                },
              ),
              SizedBox(height: 8),

              // Apple Sign In Button
              OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 14.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  side: BorderSide(color: Colors.grey),
                ),
                icon: Icon(Icons.apple, size: 24.0),
                label: Text(
                  'Sign in with Apple',
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  print('Apple Sign-In clicked');
                },
              ),

              SizedBox(height: 16),

              // Privacy Policy Text
              Text(
                'You agree to User Agreement, Privacy Policy, and Cookie Policy.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12.0, color: Colors.grey[600]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() => runApp(MaterialApp(
      home: LoginPage(),
    ));

