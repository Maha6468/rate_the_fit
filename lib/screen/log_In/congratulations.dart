import 'package:flutter/material.dart';

class Congratulations extends StatefulWidget {
  const Congratulations({super.key});

  @override
  State<Congratulations> createState() => _Custom_CongratulationsState();
}

class _Custom_CongratulationsState extends State<Congratulations>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Container(
            // width: MediaQuery.of(context).size.width * 0.8,
            width: 308,
            height: 376,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Color(0xFF2C2117), // card color
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.verified_rounded,
                    color: Colors.yellowAccent,
                    size: 60,
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Congratulations!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "You will be redirected to the home page in a few seconds",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 11,
                      decoration: TextDecoration.none,
                      letterSpacing: -1,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),

                  //CircularProgressIndicator(color: Colors.white,),
                  Positioned(
                    bottom: 80,
                    left: 0,
                    right: 0,
                    top: 600,
                    child: Center(
                      child: RotationTransition(
                        turns: _controller,
                        //child: CircularProgressIndicator(),
                        child: Image.asset(
                          "assets/images/Loading.png",
                          height: 50,
                          width: 50,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
