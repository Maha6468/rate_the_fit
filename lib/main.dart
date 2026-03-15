import 'package:flutter/material.dart';
import 'package:rate_the_fit/coustom_widget/custom_routes.dart';
import 'package:rate_the_fit/practice.dart';
import 'package:rate_the_fit/screen/Side_Bar_Flow/side_bar.dart';
import 'package:rate_the_fit/screen/home_flow/home.dart';
import 'package:rate_the_fit/splash_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rate The Fit',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: "/",
      routes: AppRoutes.routes,
      //home: Home(),
      //home: SideBar(),
      //home: Splash_Screen(),
    );
  }
}
