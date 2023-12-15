import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class User_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Center(
          child: Text(
            'Trang Cá Nhân',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
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
            ],
          ),
        ),
      ),
    );
  }
}
