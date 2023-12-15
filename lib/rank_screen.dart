import 'package:flutter/material.dart';

class rank_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Center(
            child: const Text('Xếp Hạng'),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                width: 1000,
                height: 50,
                color: Color.fromARGB(255, 67, 160, 170),
                margin: const EdgeInsets.all(30),
                child: const Text(" NGUYEN VAN A ",
                    style: TextStyle(fontSize: 25)),
              ),
              Container(
                alignment: Alignment.centerLeft,
                width: 1000,
                height: 50,
                color: Color.fromARGB(255, 67, 160, 170),
                margin: EdgeInsets.all(30),
                child: Text("PHAN VANH LÉT ", style: TextStyle(fontSize: 25)),
              ),
              Container(
                alignment: Alignment.centerLeft,
                width: 1000,
                height: 50,
                color: Color.fromARGB(255, 67, 160, 170),
                margin: EdgeInsets.all(30),
                child: Text(" PHẠM SAI LẦN   ", style: TextStyle(fontSize: 25)),
              ),
              Container(
                alignment: Alignment.centerLeft,
                width: 1000,
                height: 50,
                color: Color.fromARGB(255, 67, 160, 170),
                margin: EdgeInsets.all(30),
                child: Text(" NGUYEN VAN A ", style: TextStyle(fontSize: 25)),
              ),
              Container(
                alignment: Alignment.centerLeft,
                width: 1000,
                height: 50,
                color: Color.fromARGB(255, 67, 160, 170),
                margin: EdgeInsets.all(30),
                child: Text(" NGUYEN VAN A ", style: TextStyle(fontSize: 25)),
              ),
              Container(
                alignment: Alignment.centerLeft,
                width: 1000,
                height: 50,
                color: Color.fromARGB(255, 67, 160, 170),
                margin: EdgeInsets.all(30),
                child: Text(" NGUYEN VAN A ", style: TextStyle(fontSize: 25)),
              ),
              Container(
                alignment: Alignment.centerLeft,
                width: 1000,
                height: 50,
                color: Color.fromARGB(255, 67, 160, 170),
                margin: EdgeInsets.all(30),
                child: Text(" NGUYEN VAN A ", style: TextStyle(fontSize: 25)),
              ),
              Container(
                alignment: Alignment.centerLeft,
                width: 1000,
                height: 50,
                color: Color.fromARGB(255, 67, 160, 170),
                margin: EdgeInsets.all(30),
                child: Text(" NGUYEN VAN A ", style: TextStyle(fontSize: 25)),
              ),
              Container(
                alignment: Alignment.centerLeft,
                width: 1000,
                height: 50,
                color: Color.fromARGB(255, 67, 160, 170),
                margin: EdgeInsets.all(30),
                child: Text(" NGUYEN VAN A ", style: TextStyle(fontSize: 25)),
              ),
              Container(
                alignment: Alignment.centerLeft,
                width: 1000,
                height: 50,
                color: Color.fromARGB(255, 67, 160, 170),
                margin: EdgeInsets.all(30),
                child: Text(" NGUYEN VAN A ", style: TextStyle(fontSize: 25)),
              ),
            ],
          ),
        ));
  }
}
