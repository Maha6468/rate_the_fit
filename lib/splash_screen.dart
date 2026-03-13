import 'dart:async';
import 'package:flutter/material.dart';
import 'package:rate_the_fit/screen/log_In/Login.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(
        context, "/login"
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black87, Color(0xFF1C1914), Color(0xFF090C0E)],
            begin: Alignment.bottomLeft,
            end: Alignment.topLeft,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(width * 0.05),
                decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      blurRadius: 15,
                      spreadRadius: 2,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Image.asset(
                  "assets/images/star.png",
                  //height: 100,
                  //width: 100,
                  height: height * 0.15,
                  width: width * 0.30,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: height * 0.04),
              Text(
                "Rate The Fit App",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: width * 0.07,
                  color: Color(0xFFFFF4C7),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
