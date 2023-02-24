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
          Image.network('https://www.shutterstock.com/image-vector/man-key-near-computer-account-260nw-1499141258.jpg'),
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


