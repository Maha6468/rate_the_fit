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
    Timer(Duration(seconds: 10),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));
    }
    );
  }
  @override


  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.black87,
                  Color(0xFF1C1914),
                  Color(0xFF090C0E)],
                begin: Alignment.bottomLeft,
                end: Alignment.topLeft)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  padding: const EdgeInsets.all(20),
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
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  )),
              SizedBox(
                height: 30,
              ),
              Text(
                "Rate The Fit App",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xFFFFF4C7)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}