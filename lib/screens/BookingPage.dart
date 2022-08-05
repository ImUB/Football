import 'package:flutter/material.dart';

class BookingPage extends StatefulWidget {
  BookingPage({Key? key}) : super(key: key);

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  Widget timeTable = SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                width: 100,
                padding: EdgeInsets.all(5.0),
                child: OutlinedButton(
                    onPressed: () {}, child: const Text('06:00')),
              ),
              Container(
                width: 100,
                padding: EdgeInsets.all(5.0),
                child: OutlinedButton(
                    onPressed: () {}, child: const Text('07:00')),
              ),
              Container(
                width: 100,
                padding: EdgeInsets.all(5.0),
                child: OutlinedButton(
                    onPressed: () {}, child: const Text('08:00')),
              ),
              Container(
                width: 100,
                padding: EdgeInsets.all(5.0),
                child: OutlinedButton(
                    onPressed: () {}, child: const Text('09:00')),
              ),
              Container(
                width: 100,
                padding: EdgeInsets.all(5.0),
                child: OutlinedButton(
                    onPressed: () {}, child: const Text('10:00')),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 100,
                padding: EdgeInsets.all(5.0),
                child: OutlinedButton(
                    onPressed: () {}, child: const Text('11:00')),
              ),
              Container(
                width: 100,
                padding: EdgeInsets.all(5.0),
                child: OutlinedButton(
                    onPressed: () {}, child: const Text('12:00')),
              ),
              Container(
                width: 100,
                padding: EdgeInsets.all(5.0),
                child: OutlinedButton(
                    onPressed: () {}, child: const Text('13:00')),
              ),
              Container(
                width: 100,
                padding: EdgeInsets.all(5.0),
                child: OutlinedButton(
                    onPressed: () {}, child: const Text('14:00')),
              ),
              Container(
                width: 100,
                padding: EdgeInsets.all(5.0),
                child: OutlinedButton(
                    onPressed: () {}, child: const Text('15:00')),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 100,
                padding: EdgeInsets.all(5.0),
                child: OutlinedButton(
                    onPressed: () {}, child: const Text('16:00')),
              ),
              Container(
                width: 100,
                padding: EdgeInsets.all(5.0),
                child: OutlinedButton(
                    onPressed: () {}, child: const Text('17:00')),
              ),
              Container(
                width: 100,
                padding: EdgeInsets.all(5.0),
                child: OutlinedButton(
                    onPressed: () {}, child: const Text('18:00')),
              ),
              Container(
                width: 100,
                padding: EdgeInsets.all(5.0),
                child: OutlinedButton(
                    onPressed: () {}, child: const Text('19:00')),
              ),
              Container(
                width: 100,
                padding: EdgeInsets.all(5.0),
                child: OutlinedButton(
                    onPressed: () {}, child: const Text('20:00')),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 100,
                padding: EdgeInsets.all(5.0),
                child: OutlinedButton(
                    onPressed: () {}, child: const Text('21:00')),
              ),
              Container(
                width: 100,
                padding: EdgeInsets.all(5.0),
                child: OutlinedButton(
                    onPressed: () {}, child: const Text('22:00')),
              ),
              Container(
                width: 100,
                padding: EdgeInsets.all(5.0),
                child: OutlinedButton(
                    onPressed: () {}, child: const Text('23:00')),
              ),
              Container(
                width: 100,
                padding: EdgeInsets.all(5.0),
                child: OutlinedButton(
                    onPressed: () {}, child: const Text('24:00')),
              ),
              Container(
                width: 100,
                padding: EdgeInsets.all(5.0),
                child: OutlinedButton(
                    onPressed: () {}, child: const Text('25:00')),
              ),
            ],
          ),
        ],
      ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('예   약')),
        body: Container(
          padding: EdgeInsets.only(left: 40, right: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 40, bottom: 10),
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.calendar_today_sharp),
                    Text(
                      "2022. 05. 11",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 30),
                    ),
                    Icon(Icons.arrow_circle_down),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 40, bottom: 10),
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.access_time_rounded),
                    Text(
                      "시간 선택",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 30),
                    ),
                    Icon(Icons.arrow_circle_down),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 40, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('예약자 이름'),
                    TextField(),
                    Padding(padding: EdgeInsets.only(top: 40)),
                    Text('총 이용인원'),
                    TextField(),
                    Padding(padding: EdgeInsets.only(top: 40)),
                    Text('전화번호'),
                    TextField()
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
