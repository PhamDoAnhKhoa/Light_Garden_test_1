////import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:metaqiz/home_screen.dart';

class login_screen extends StatefulWidget {
  const login_screen({super.key});
  @override
  State<login_screen> createState() => _loginState();
}

class _loginState extends State<login_screen> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
////  final _auth = FirebaseAuth.instance;
  @override
  void dispose() {
    txtEmail.dispose();
    txtPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Center(
            child: Text('Đăng Nhập'),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(30),
                child: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 78, 153, 17),
                  radius: 130,
                  child: CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/images/logoNbackground.png',
                      ),
                      radius: 120),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                child: TextField(
                  controller: txtEmail,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                child: TextField(
                  controller: txtPassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.password),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                child: ElevatedButton(
                  onPressed: () {
                    if (txtEmail.text.isEmpty || txtPassword.text.isEmpty) {
                      const snackBar = SnackBar(
                        content: Text('Điền Email và Mật Khẩu'),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      return;
                    }
                    if (txtEmail.text == "abc@gmail.com" &&
                        txtPassword.text == "123456") {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => home_screen()));
                    } else {
                      const snackBar = SnackBar(
                        content: Text('Sai Email hoặc Mật Khẩu'),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                  child: const Text('Ðăng Nhập'),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    const snackBar = SnackBar(
                      content: Text('Chức năng hiện chưa hoàn thiện'),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }, //Bo sung 5
                  child: const Text(
                    'Quên mật khẩu',
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
