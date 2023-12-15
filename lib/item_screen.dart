import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:metaqiz/item_detail.dart';
import 'package:metaqiz/item_object.dart';

class item_screen extends StatelessWidget {
  List<ItemObject> IsItems = [
    ItemObject(
      'Hãy để gió cuốn đi',
      50,
      'Thổi bay đám quái hiện tại. Nói tóm gọn là đổi câu hỏi',
      'assets/images/item1.png',
    ),
    ItemObject(
      'Thiên động vạn tượng',
      100,
      'Dùng trọng lực tạo đất đá đóng hộp địch, ngăn chặn cử động của kẻ địch không để bị tấn công. Nói tóm gọn là không mất hp dù trả lời sai',
      'assets/images/item2.png',
    ),
    ItemObject(
      'Nhát đao vô tưởng',
      100,
      'Dùng nhát trảm đánh bay nửa số quái. Nói tóm gọn là 50/50',
      'assets/images/item3.png',
    ),
    ItemObject(
      'Thánh điện tri thức',
      200,
      'Triệu hồi thánh điện tri thức làm lộ điểm yếu của địch. Nói tóm gọn là thấy luôn đáp án đúng.LƯU Ý CHỈ CÓ THỂ DÙNG 1 LẦN TRONG TRẬN',
      'assets/images/item4.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trợ giúp'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(5),
        itemCount: IsItems.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(
                IsItems[index].productname,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Hero(
                tag: 'productimage_${IsItems[index].productname}',
                child: Image.asset(IsItems[index].picture),
              ),
              subtitle: Text(
                '${IsItems[index].price} Udarium',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ItemDetail(product: IsItems[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
