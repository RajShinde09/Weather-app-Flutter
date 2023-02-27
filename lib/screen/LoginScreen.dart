import 'package:flutter/material.dart';
import '../Constants.dart' as constant;
import '../textfield.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../Network/Location.dart';

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
  void initState() {
    // TODO: implement initState
    super.initState();
    apiCall();
  }
  void apiCall() async{
   var location = await determinePosition();
   myvar = await constant.apiInstance.getLocation(location.latitude.toString(),location.latitude.toString());
  }

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
          Image.network('https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg'),
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
                //   try{
                //     final newUser =
                //         await _auth.signInWithEmailAndPassword(
                //         email: email, password: password);
                //
                //     if(newUser.user != null && myvar != 0){
                //       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MainScreen()));
                //     }
                //   } catch (e){
                //     debugPrint('$e');
                //   }
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MainScreen()));
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


