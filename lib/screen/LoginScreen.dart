import 'dart:js';

import 'package:flutter/material.dart';
import '../Constants.dart' as constant;
import '../textfield.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'mainscreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  late String email, password;
  int myvar = 0;

  @override
  Widget build(BuildContext context) {
    final _auth =FirebaseAuth.instance;
    return Scaffold(
      backgroundColor: constant.textPrimary,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Container()),
          Image.network('https://o.remove.bg/downloads/c263957f-4e5b-4fc1-accb-1845f32643c7/138-1387775_login-to-do-whatever-you-want-login-icon-removebg-preview.png'),
          Password(text: 'E-Mail',isPassword: false, onChanged: (value ) {
            email = value;
          },),
          Password(text: 'Password',isPassword: true, onChanged: (value ) {
            password = value;
          },),
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Container(
              width: 180,
              color: constant.dayPrimary,
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                   side: BorderSide(
                     width: 3,
                     color: constant.textPrimary,
                   )
                  )
                ),
                onPressed: () async {
                  try{
                    final newUser =
                        await _auth.signInWithEmailAndPassword(
                        email: email, password: password);

                    if(newUser.user != null && myvar != 0){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MainScreen()));;
                    }
                  } catch (e){
                    debugPrint('$e');
                  }
                },
                child: Text(
                  'Login',
                style: TextStyle(
                  fontSize: 30.0,
                  color: constant.textPrimary,
              ),
              ),
              ),
            ),
          ),
          Expanded(child: Container()),
        ],
      ),
    );
  }
}


