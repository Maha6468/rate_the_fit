import 'package:flutter/material.dart';
import 'package:rate_the_fit/practice.dart';
import 'package:rate_the_fit/screen/message_flow/chat_inner.dart';
import 'package:rate_the_fit/screen/home_flow/home.dart';
import 'package:rate_the_fit/splash_screen.dart';

import 'screen/Create_Post_Flow/create_post.dart';
import 'screen/Side_Bar_Flow/side_bar.dart';
import 'screen/message_flow/Chat_1.dart';
import 'screen/message_flow/chat_2.dart';



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
      home:Home_P(),
      //home: Home(),
      //home: Splash_Screen(),
      // home: Login(),
      //home: Create_Post(),
      //home: MessageListScreen(),
      //home: Chat_1(),
      //home: Chat_2(),
      //home: Chat_Inner(),
      //home: CustomDrawer(),
    );
  }
}