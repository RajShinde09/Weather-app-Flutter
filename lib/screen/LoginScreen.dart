import 'package:flutter/material.dart';
import '../Constants.dart' as constant;
import '../textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: constant.textPrimary,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Container()),
          Image.network('https://o.remove.bg/downloads/c263957f-4e5b-4fc1-accb-1845f32643c7/138-1387775_login-to-do-whatever-you-want-login-icon-removebg-preview.png'),
          Password(text: 'E-Mail',isPassword: false,),
          Password(text: 'Password',isPassword: true,),
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
                onPressed: (){},
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


