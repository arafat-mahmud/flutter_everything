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
                style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Chivo',
                    color: Colors.black),
              ),
              SizedBox(height: 8),
              Text(
                'Stay updated on your professional world.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[600],
                  fontFamily: 'Chivo',
                ),
              ),
              SizedBox(height: 35),

              // Email Field
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                style: TextStyle(
                  fontFamily: 'Chivo', // Use the Chivo font here
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
                style: TextStyle(
                  fontFamily: 'Chivo', // Use the Chivo font here
                ),
              ),
              SizedBox(height: 0),

              // Forgot Password Link
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/forgot-password');
                    print('Forgot Password clicked');
                  },
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 2.0),
                        child: Text(
                          'Forgot password?',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Chivo',
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          color: Colors.black,
                          height: 2,
                          width: 124,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 14),

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
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                    fontFamily: 'Chivo',
                  ),
                ),
              ),
              SizedBox(height: 12),

              // Privacy Policy Text
              Text(
                'You agree to User Agreement, Privacy Policy, and Cookie Policy.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 11.0,
                  color: Colors.grey[600],
                  fontFamily: 'Chivo',
                ),
              ),
              SizedBox(height: 12),

              Row(
                children: [
                  Expanded(child: Divider()),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'or',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Chivo',
                      ),
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
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Chivo',
                  ),
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
                      style: TextStyle(color: Colors.grey, fontFamily: 'Chivo'),
                    ),
                  ),
                  Expanded(child: Divider()),
                ],
              ),
              SizedBox(height: 10),

              Text(
                'Agree and sign in with',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.grey[600],
                  fontFamily: 'Chivo',
                ),
              ),

              SizedBox(height: 10),

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
                  'assets/images/google_icon.png',
                  height: 18.0,
                ),
                label: Text(
                  'Continue with Google',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Chivo',
                  ),
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
                icon: Icon(
                  Icons.apple,
                  size: 24.0,
                  color: Colors.black,
                ),
                label: Text(
                  'Sign in with Apple',
                  style: TextStyle(color: Colors.black, fontFamily: 'Chivo'),
                ),
                onPressed: () {
                  print('Apple Sign-In clicked');
                },
              ),

              SizedBox(height: 16),
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
