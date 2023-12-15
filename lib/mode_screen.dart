import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:metaqiz/level_screen.dart';

class mode_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Center(
          child: Text('Chế độ chơi'),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                child: InkWell(
              splashColor: Colors.lightGreen.withOpacity(0.1),
              child: Ink(
                padding: EdgeInsets.all(10),
                child: Center(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 218, 251, 0))),
                    child: Text(
                      "HÀNH TRÌNH MẠO HIỂM",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          backgroundColor: Color.fromARGB(255, 224, 215, 128),
                          fontSize: 30,
                          fontFamily: 'Times New Roman',
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/adven.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => level_screen(),
                  ),
                );
              },
            )),
            Container(
                child: InkWell(
              splashColor: Colors.lightGreen.withOpacity(0.1),
              child: Ink(
                padding: EdgeInsets.all(10),
                child: Center(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 218, 251, 0))),
                    child: Text(
                      "1 VS 1",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          backgroundColor: Color.fromARGB(255, 224, 215, 128),
                          fontSize: 30,
                          fontFamily: 'Times New Roman',
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/solo.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Thông báo'),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: [
                              Container(
                                child: Text(
                                  'Chế độ chơi này chưa khả dụng.',
                                ),
                              ),
                              Container(
                                  padding: EdgeInsets.all(20),
                                  child: Image.asset(
                                    'images/cry.png',
                                    height: 300,
                                    width: 360,
                                  )),
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          TextButton(
                            child: const Text('Quay lại'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    });
              },
            )),
            Container(
                child: InkWell(
              splashColor: Colors.lightGreen.withOpacity(0.1),
              child: Ink(
                padding: EdgeInsets.all(10),
                child: Center(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 218, 251, 0))),
                    child: Text(
                      "ĐẤU TRƯỜNG",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          backgroundColor: Color.fromARGB(255, 224, 215, 128),
                          fontSize: 30,
                          fontFamily: 'Times New Roman',
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/arena.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Thông báo'),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: [
                              Container(
                                child: Text(
                                  'Chế độ chơi này chưa khả dụng.',
                                ),
                              ),
                              Container(
                                  padding: EdgeInsets.all(20),
                                  child: Image.asset(
                                    'images/cry.png',
                                    height: 300,
                                    width: 360,
                                  )),
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          TextButton(
                            child: const Text('Quay lại'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    });
              },
            )),
          ],
        ),
      ),
    );
  }
}
