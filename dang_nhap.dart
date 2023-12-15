import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:light_garden/dang_ky.dart';

class logInScreen extends StatefulWidget {
  @override
  _logInScreenState createState() => _logInScreenState();
}

class _logInScreenState extends State<logInScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  Future<void> _SignIn() async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );

      print('User logged in: ${userCredential.user}');
    } catch (e) {
      print('Error during login: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Screen'),
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
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 32.0),
            Row(
              children: [
                ElevatedButton(
                  onPressed: _SignIn,
                  child: Text('Login'),
                ),
                InkWell(
                    child: Text('Chua co tai khoan'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => signInScreen()),
                      );
                    }),
              ],
            )
          ],
        ),
      ),
    );
  }
}
