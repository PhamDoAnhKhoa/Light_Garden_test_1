import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:metaqiz/playgame_screen.dart';

class topic_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Center(
          child: Text('Chủ đề'),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                child: InkWell(
              splashColor: Colors.yellowAccent.withOpacity(0.5),
              child: Ink(
                padding: EdgeInsets.all(10),
                child: Text(
                  "GAME",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontSize: 50,
                      fontFamily: 'Tahoma',
                      fontWeight: FontWeight.bold),
                ),
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/genshin.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => playgame_screen(),
                  ),
                );
              },
            )),
            Container(
                child: InkWell(
              splashColor: Colors.blueAccent.withOpacity(0.5),
              child: Ink(
                padding: EdgeInsets.all(10),
                child: Text(
                  "LỊCH SỬ",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontSize: 50,
                      fontFamily: 'Tahoma',
                      fontWeight: FontWeight.bold),
                ),
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/fgo.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => playgame_screen(),
                  ),
                );
              },
            )),
            Container(
                child: InkWell(
              splashColor: Colors.purpleAccent.withOpacity(0.5),
              child: Ink(
                padding: EdgeInsets.all(10),
                child: Text(
                  "VŨ TRỤ",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontSize: 50,
                      fontFamily: 'Tahoma',
                      fontWeight: FontWeight.bold),
                ),
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/cosmos.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => playgame_screen(),
                  ),
                );
              },
            )),
            Container(
              margin: EdgeInsets.only(bottom: 0),
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0))),
                  child: Text(
                    'ĐANG CẬP NHẬT',
                    style: TextStyle(
                      fontFamily: 'Tahoma',
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/updating.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            // Container(
            //   alignment: Alignment.center,
            //   padding: EdgeInsets.all(10),
            //   margin: EdgeInsets.all(10),
            //   child: ElevatedButton(
            //       child: Text('Game'),
            //       onPressed: () {},
            //       style: ElevatedButton.styleFrom(
            //         padding: EdgeInsets.all(20),
            //       )),
            // ),
            // Container(
            //   alignment: Alignment.center,
            //   padding: EdgeInsets.all(10),
            //   margin: EdgeInsets.all(10),
            //   child: ElevatedButton(
            //       child: Text('Anime'),
            //       onPressed: () {},
            //       style: ElevatedButton.styleFrom(
            //         padding: EdgeInsets.all(20),
            //       )),
            // ),
            // Container(
            //   alignment: Alignment.center,
            //   padding: EdgeInsets.all(10),
            //   margin: EdgeInsets.all(10),
            //   child: ElevatedButton(
            //       child: Text('Cosmos'),
            //       onPressed: () {
            //         Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //             builder: (context) => playgame_screen(),
            //           ),
            //         );
            //       },
            //       style: ElevatedButton.styleFrom(
            //         padding: EdgeInsets.all(20),
            //       )),
            // )
          ],
        ),
      ),
    );
  }
}
