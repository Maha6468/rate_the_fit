import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Text_Rich extends StatelessWidget {
  final String firstText;
  final Color firstColor;
  final String lastText;
  final Color lastColor;
  final VoidCallback onTap;

  const Text_Rich({super.key, required this.firstText, required this.lastText, required this.firstColor, required this.lastColor, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(text: firstText,style: TextStyle(color:firstColor),
          children: [
            TextSpan(
                text: lastText,
                style:
                TextStyle(fontWeight: FontWeight.bold,color:lastColor,fontSize: 16),
                recognizer: TapGestureRecognizer()
                  ..onTap =onTap),
          ]
      ),

    );
  }
}