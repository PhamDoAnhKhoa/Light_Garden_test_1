import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SignIn Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                // Implement your authentication logic here
                String username = _usernameController.text;
                String password = _passwordController.text;

                // Add your authentication logic here (e.g., check against a database)
                if (username == 'your_username' &&
                    password == 'your_password') {
                  // Navigate to the next screen or perform the desired action
                  // For now, just print a message
                  print('Login successful!');
                } else {
                  // Handle authentication failure
                  print('Login failed. Please check your credentials.');
                }
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
