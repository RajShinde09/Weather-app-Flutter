import 'dart:ffi';

import 'package:flutter/material.dart';
import '../Constants.dart' as constant;

class Password extends StatelessWidget {
  final String text;
  final bool isPassword;
  const Password({
    super.key, required this.text, required this.isPassword,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextField(
        style: TextStyle(
          color: constant.dayPrimary,
        ),
        obscureText: isPassword,
        obscuringCharacter: '#',
        decoration: InputDecoration(
          hintText: text,
          hintStyle: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic,
            color: constant.dayPrimary,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: constant.dayPrimary,
              width: 4,
              style: BorderStyle.solid,
            ),
          ),
        ),
      ),
    );
  }
}
