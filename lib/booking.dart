import 'package:flutter/material.dart';

class  Booking extends StatelessWidget {
  const Booking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.navigate_before),
        title: Text('예약'),
      ),
      body: Column(
        children: [
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Text('팀이름 :'),
                    TextField()
                  ],
                ),
                Row(
                  children: [
                    Text('전화번호 :'),
                    TextField()
                  ],
                ),
                Row(
                  children: [
                    Text('이용 인원'),
                    TextField()
                  ],
                )
              ],
            ),
          ),
          ElevatedButton(onPressed: () {}, child: Text('결제하기'))
        ],
      ),
    );
  }
}
