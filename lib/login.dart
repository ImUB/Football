import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

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
            title: Text('로그인'),
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
                        labelText: '패스워드'
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Text('아이디 찾기'),
                    Text('/'),
                    Text('패스워드 찾기')
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}
