import 'package:flutter/material.dart';
import 'Rating_Flow_1.dart';
import 'Rating_Flow_2.dart';

class RatingFlowScreen extends StatelessWidget {
  const RatingFlowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.horizontal,
        children: const [
          Rating_Home_1(),
          Rating_Home_2(),
        ],
      ),
    );
  }
}