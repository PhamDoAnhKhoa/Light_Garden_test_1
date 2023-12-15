import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:metaqiz/login_screen.dart';
import 'package:metaqiz/register_screen.dart';

class main_screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainScreenState();
  }
}

class _MainScreenState extends State<main_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Image.asset("assets/images/logo.png"),
            ),
            Container(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => login_screen(),
                    ),
                  );
                },
                child: const Text('Ðăng Nhập'),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Register_Screen(),
                    ),
                  ).then((value) {
                    if (value != null) {
                      final snackBar = SnackBar(content: Text(value));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  });
                },
                child: const Text('Ðăng ký'),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 250, right: 50, top: 300),
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                child: Row(
                  children: [
                    Icon(Icons.exit_to_app),
                    SizedBox(width: 5),
                    Text('Thoát'),
                  ],
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (err) => AlertDialog(
                      title: Text("Cảnh Báo"),
                      content: Text("Bạn có muốn thoát"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(err).pop();
                          },
                          child: Container(
                            color: Colors.black87,
                            padding: EdgeInsets.all(10),
                            child: Text("Okay"),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
