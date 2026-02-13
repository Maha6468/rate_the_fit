import 'package:flutter/material.dart';
import 'package:rate_the_fit/screen/home_flow/home.dart';
import 'package:rate_the_fit/splash_screen.dart';

import 'Create_Post_Flow/create_post.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      //home: Home(),
      //home: Splash_Screen(),
      // home: Login(),
      home: NewPostScreen(),
    );
  }
}