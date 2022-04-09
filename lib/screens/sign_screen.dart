import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:football/screens/main_screen.dart';

class Signscreen extends StatefulWidget {
  const Signscreen({Key? key}) : super(key: key);

  @override
  _SignscreenState createState() => _SignscreenState();
}

class _SignscreenState extends State<Signscreen> {
  final _authentication = FirebaseAuth.instance;

  bool isSignupScreen = true;
  final _formKey = GlobalKey<FormState>();
  String userEmail = '';
  String userName = '';
  String userPass = '';

  void _tryValidation() {
    final isValid = _formKey.currentState!.validate();
    if (isValid) {
      _formKey.currentState!.save();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(),
          ), // 배경
          AnimatedPositioned(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeIn,
            top: 180,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              curve: Curves.easeIn,
              padding: EdgeInsets.all(20.0),
              height: isSignupScreen ? 340.0 : 250.0,
              width: MediaQuery
                  .of(context)
                  .size
                  .width - 40,
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 15,
                      spreadRadius: 5),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSignupScreen = false;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              '로그인',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color:
                                isSignupScreen ? Colors.grey : Colors.black,
                              ),
                            ),
                            if (!isSignupScreen)
                              Container(
                                margin: EdgeInsets.only(top: 3),
                                height: 2,
                                width: 55,
                                color: Colors.orange,
                              )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSignupScreen = true;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              '회원가입',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color:
                                isSignupScreen ? Colors.black : Colors.grey,
                              ),
                            ),
                            if (isSignupScreen)
                              Container(
                                margin: EdgeInsets.only(top: 3),
                                height: 2,
                                width: 55,
                                color: Colors.orange,
                              )
                          ],
                        ),
                      ),
                    ],
                  ),
                  if (isSignupScreen)
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              key: ValueKey(1),
                              validator: (value) {
                                if (value!.isEmpty || !value.contains('@')) {
                                  return '이메일을 입력해주세요.';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                userEmail = value!;
                              },
                              onChanged: (value) {
                                userEmail = value;
                              },
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.email),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.grey),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(35.0))),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.grey),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(35.0))),
                                  hintText: '이메일',
                                  hintStyle: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                  contentPadding: EdgeInsets.all(10)),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            TextFormField(
                              key: ValueKey(2),
                              validator: (value) {
                                if (value!.isEmpty || value.length < 4) {
                                  return '최소 4글자 이상 입력해주세요.';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                userName = value!;
                              },
                              onChanged: (value) {
                                userName = value;
                              },
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.account_circle),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.grey),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(35.0))),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.grey),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(35.0))),
                                  hintText: '아이디',
                                  hintStyle: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                  contentPadding: EdgeInsets.all(10)),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            TextFormField(
                              obscureText: true,
                              key: ValueKey(3),
                              validator: (value) {
                                if (value!.isEmpty || value.length < 6) {
                                  return '비밀번호는 최소 6자 이상으로 작성해주세요.';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                userPass = value!;
                              },
                              onChanged: (value) {
                                userPass = value;
                              },
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.lock),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.grey),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(35.0))),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.grey),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(35.0))),
                                  hintText: '비밀번호',
                                  hintStyle: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                  contentPadding: EdgeInsets.all(10)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  if (!isSignupScreen)
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              key: ValueKey(4),
                              onSaved: (value) {
                                userEmail = value!;
                              },
                              onChanged: (value) {
                                userEmail = value;
                              },
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.account_circle),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.grey),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(35.0))),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.grey),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(35.0))),
                                  hintText: '아이디',
                                  hintStyle: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                  contentPadding: EdgeInsets.all(10)),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            TextFormField(
                              obscureText: true,
                              key: ValueKey(5),
                              onSaved: (value) {
                                userPass = value!;
                              },
                              onChanged: (value) {
                                userPass = value;
                              },
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.lock),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.grey),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(35.0))),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.grey),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(35.0))),
                                  hintText: '패스워드',
                                  hintStyle: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                  contentPadding: EdgeInsets.all(10)),
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ), // 텍스트 필
          AnimatedPositioned(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeIn,
            top: isSignupScreen ? 480 : 390,
            right: 0,
            left: 0,
            child: Center(
              child: AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeIn,
                  padding: EdgeInsets.all(15),
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50.0)),
                  child: GestureDetector(
                    onTap: () async{
                      if (isSignupScreen) {
                        _tryValidation();

                        try {
                          final newUser = await _authentication
                              .createUserWithEmailAndPassword(
                              email: userEmail,
                              password: userPass
                          );

                          if(newUser.user != null) {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return MainScreen();
                            }),
                            );
                          }
                        } catch (e) {
                          print(e);
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                  content: Text('이메일 또는 비밀번호가 잘못되었습니다.'),
                                  backgroundColor: Colors.blue)
                          );
                        }
                      }
                      try {
                        if (!isSignupScreen) {
                          _tryValidation();
                          final newUser =
                          await _authentication.signInWithEmailAndPassword(
                            email: userEmail,
                            password: userPass,
                          );
                          if (newUser.user != null) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return MainScreen();
                              }),
                            );
                          }
                        }
                      } catch(e) {
                        print(e);
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.orange, Colors.red],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                          borderRadius: BorderRadius.circular(30.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: Offset(0, 1),
                            ),
                          ]),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ),
                  )),
            ),
          ), // 전송버튼 // TextFormField
        ],
      ),
    );
  }
}
