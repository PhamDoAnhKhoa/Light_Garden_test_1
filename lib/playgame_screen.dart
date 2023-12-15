import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class playgame_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Center(
            child: Text('Đang chơi'),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                width: 1000,
                height: 300,
                color: Color.fromARGB(201, 78, 194, 255),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/item1.png'),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/item2.png'),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/item3.png'),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/item4.png'),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topCenter,
                width: 1000,
                height: 100,
                color: Color.fromARGB(119, 72, 243, 70),
                child: Text(
                    " Nhân vật người chơi gặp đầu tiên trong teyvat là ai",
                    style: TextStyle(fontSize: 25)),
              ),
              Container(
                  alignment: Alignment.bottomCenter,
                  margin: EdgeInsets.all(10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      // background
                      onPrimary: Colors.white,
                      minimumSize: Size(500, 50),
                      padding:
                          EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                      // foreground
                    ),
                    child: Text("Amber", style: TextStyle(fontSize: 28)),
                    onPressed: () {
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
                                        'Sai rồi',
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
                                  child: const Text('Ok'),
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
                  alignment: Alignment.bottomCenter,
                  margin: EdgeInsets.all(10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      // background
                      onPrimary: Colors.white,
                      minimumSize: Size(500, 50), // foreground
                    ),
                    child: Text(
                      "Venti",
                      style: TextStyle(fontSize: 28),
                      textAlign: TextAlign.left,
                    ),
                    onPressed: () {
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
                                        'Sai rồi!',
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
                                  child: const Text('Ok'),
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
                  alignment: Alignment.bottomCenter,
                  margin: EdgeInsets.all(10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      // background
                      onPrimary: Colors.white,
                      minimumSize: Size(500, 50),

// foreground
                    ),
                    child: Text(
                      "Paimon",
                      style: TextStyle(fontSize: 28),
                      textAlign: TextAlign.left,
                    ),
                    onPressed: () {
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
                                        'Bạn đã trả lời đúng, demo đến đây kết thúc.',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text('Ok'),
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
                  alignment: Alignment.bottomCenter,
                  margin: EdgeInsets.all(10),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
// background
                        onPrimary: Colors.white,
                        minimumSize: Size(500, 50),
                        // foreground
                      ),
                      child: Text(
                        "Kaeya",
                        style: TextStyle(fontSize: 28),
                        textAlign: TextAlign.left,
                      ),
                      onPressed: () {
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
                                          'Sai rồi',
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
                                    child: const Text('Ok'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            });
                      })),
            ],
          ),
        ));
  }
}
