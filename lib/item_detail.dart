import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:metaqiz/item_object.dart';

class ItemDetail extends StatefulWidget {
  ItemObject product;
  ItemDetail({Key? key, required this.product}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return ItemDetailState();
  }
}

class ItemDetailState extends State<ItemDetail> {
  @override
  Widget build(BuildContext context) {
//Lấy kích thước của màn hình
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Mua trợ giúp'),
      ),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: size.height * 0.25),
            height: size.height * 0.75,
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText(
                      this.widget.product.productname,
                      textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Giá:\n',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                          TextSpan(
                            text: '${this.widget.product.price} Udarium',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Hero(
                        tag: 'productimage_${this.widget.product.productname}',
                        child: Image.asset(this.widget.product.picture),
                      ),
                    ),
                  ],
                ),
                Text(
                  this.widget.product.description,
                  softWrap: true,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: size.height * 0.75,
              right: 20,
            ),
            child: Align(
              child: ElevatedButton(
                child: const Text('Mua'),
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
