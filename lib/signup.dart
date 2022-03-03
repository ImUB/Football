import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.pop(
                    context
                );
              }, icon: Icon(Icons.navigate_before),
            ),
            title: Text('회원가입'),
          ),
          body: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          labelText: '아이디'
                      ),
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: '비밀번호'
                      ),
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: '비밀번호 확인'
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          labelText: '이름'
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          labelText: '휴대전화'
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: '이메일'
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () { },
                      child: Text('회원가입'), ),
                    ElevatedButton(
                      onPressed: () { },
                      child: Text('취소') )
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}
