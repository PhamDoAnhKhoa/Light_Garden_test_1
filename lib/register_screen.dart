////import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:metaqiz/home_screen.dart';
import 'package:metaqiz/login_screen.dart';

class Register_Screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RegisterScreenState();
  }
}

class RegisterScreenState extends State<Register_Screen> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
////  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Center(
          child: Text('Đăng Ký'),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(30),
              child: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 78, 153, 17),
                radius: 130,
                child: CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/images/logo.png',
                    ),
                    radius: 120),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                controller: txtEmail,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.mail_outline),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                controller: txtPassword,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.password_outlined),
                ),
              ),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     try {
            //       final newUser = _auth.createUserWithEmailAndPassword(
            //           email: txtEmail.text, password: txtPassword.text);
            //       if (newUser != null) {
            //         Navigator.pop(context, 'Đăng ký thành công');
            //       } else {
            //         final snackBar =
            //             SnackBar(content: Text('Tài Khoản Này Không Hợp Lệ'));
            //         ScaffoldMessenger.of(context).showSnackBar(snackBar);
            //       }
            //     } catch (e) {
            //       final snackBar = SnackBar(content: Text('Có Lỗi Xảy Ra!'));
            //       ScaffoldMessenger.of(context).showSnackBar(snackBar);
            //     }
            //   },
            //   child: const Text('Ðăng ký'),
            // ),
          ],
        ),
      ),
    );
  }
}
