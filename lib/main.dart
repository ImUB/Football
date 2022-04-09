import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:football/screens/sign_screen.dart';

main() async{
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
      title: 'Football App',
      home: Signscreen(),
    );
  }
}

