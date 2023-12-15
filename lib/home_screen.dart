import 'package:flutter/material.dart';
import 'package:metaqiz/item_screen.dart';
import 'package:metaqiz/mode_screen.dart';
import 'package:metaqiz/rank_screen.dart';
import 'package:metaqiz/setting_screen.dart';

class home_screen extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/HomeBackground.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Home Page",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          centerTitle: true,
        ),
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ElevatedButton(
              //   child: Text('Audio'),
              //   onPressed: () {
              //     final player = AudioPlayer();
              //     player.play(AssetSource('nok.mp3'));
              //   },
              // ),
              Image.asset('assets/images/HomeBackground.jpg'),
              Padding(padding: EdgeInsets.all(10)),
              Container(
                margin: const EdgeInsets.only(bottom: 7.0, top: 7.0),
                child: SizedBox(
                  height: 50,
                  width: 250,
                  child: ElevatedButton.icon(
                    icon: Icon(
                      Icons.person_outline_outlined,
                      color: Color.fromARGB(255, 240, 239, 239),
                      size: 30.0,
                    ),
                    onPressed: () {},
                    label: Text(
                      "Quản Lý Tài Khoản",
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: "Quando",
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(141, 190, 62, 212),
                      textStyle: TextStyle(fontSize: 20),
                      alignment: Alignment.center,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 7.0, top: 7.0),
                child: SizedBox(
                  height: 50,
                  width: 250,
                  child: ElevatedButton.icon(
                    icon: Icon(
                      Icons.shop,
                      color: Color.fromARGB(255, 240, 239, 239),
                      size: 30.0,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => item_screen(),
                        ),
                      );
                    },
                    label: Text(
                      "Shop",
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: "Quando",
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(141, 190, 62, 212),
                      textStyle: TextStyle(fontSize: 20),
                      alignment: Alignment.center,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 7.0, top: 7.0),
                child: SizedBox(
                  height: 50,
                  width: 250,
                  child: ElevatedButton.icon(
                    icon: Icon(
                      Icons.play_circle_outline_outlined,
                      color: Color.fromARGB(255, 240, 239, 239),
                      size: 30.0,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => mode_screen(),
                        ),
                      );
                    },
                    label: Text(
                      "Bắt Đầu Chơi",
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: "Quando",
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(141, 190, 62, 212),
                      textStyle: TextStyle(fontSize: 20),
                      alignment: Alignment.center,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 7.0, top: 7.0),
                child: SizedBox(
                  height: 50,
                  width: 250,
                  child: ElevatedButton.icon(
                    icon: Icon(
                      Icons.rate_review_outlined,
                      color: Color.fromARGB(255, 240, 239, 239),
                      size: 30.0,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => rank_screen(),
                        ),
                      );
                    },
                    label: Text(
                      "Xếp Hạng",
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: "Quando",
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(141, 190, 62, 212),
                      textStyle: TextStyle(fontSize: 20),
                      alignment: Alignment.center,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 7.0, top: 7.0),
                child: SizedBox(
                  height: 50,
                  width: 250,
                  child: ElevatedButton.icon(
                    icon: Icon(
                      Icons.settings,
                      color: Color.fromARGB(255, 240, 239, 239),
                      size: 30.0,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => setting_screen(),
                        ),
                      );
                    },
                    label: Text(
                      "Cài Đặt",
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: "Quando",
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(141, 190, 62, 212),
                      textStyle: TextStyle(fontSize: 20),
                      alignment: Alignment.center,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
