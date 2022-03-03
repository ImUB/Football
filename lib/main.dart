import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'login.dart';
import 'signup.dart';


Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyCLyOmbpFVCXSFuFcPu3pJvLBEB9qrOsFc", // Your apiKey
      appId: "project-48a20", // Your appId
      messagingSenderId: "387319528111", // Your messagingSenderId
      projectId: "project-48a20", // Your projectId
    ),
  );
  runApp(
      MaterialApp(
          home: MyApp()
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.account_circle),
          title: Text("짬내서 풋살"),
          actions: [
            Row(
              children: [
                TextButton(
                  child: Text('로그인'),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                  },
                  style: TextButton.styleFrom(
                    primary: Colors.white
                  ),
                ),
                Text('/'),
                TextButton(
                  child: Text('회원가입'),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Signup()));
                  },
                  style: TextButton.styleFrom(
                    primary: Colors.white
                  ),
                )
              ],
            )
          ]
        ),
        body: Center(
          child: Column(
            children: [
              Text('본문입니다.')

            ],
          )
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.grey,
          selectedItemColor: Colors.white,
          selectedFontSize: 14,
          unselectedFontSize: 14,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.sports_soccer),
              label: '구장보기'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.watch_later_outlined),
              label: '예약결과'
            )
          ],
        )

        ),
      );
  }
}

