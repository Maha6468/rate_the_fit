import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Rating_Home_1 extends StatelessWidget {
  const Rating_Home_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/rating_image/max-titov-Mhktr6dFD3I-unsplash 1 (1).png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 10,
              left: 15,
              right: 15,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Welcome 👋",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.menu, color: Colors.white)
                ],
              ),
            ),
            Positioned(
              right: 10,
              bottom: 150,
              child: Column(
                children: const [

                  Icon(Icons.favorite_border,
                      color: Colors.white, size: 30),
                  SizedBox(height: 5),
                  Text("4.5M", style: TextStyle(color: Colors.white)),

                  SizedBox(height: 20),

                  Icon(Icons.chat_bubble_outline,
                      color: Colors.white, size: 30),
                  SizedBox(height: 5),
                  Text("25.2K", style: TextStyle(color: Colors.white)),

                  SizedBox(height: 20),

                  Icon(Icons.bookmark_border,
                      color: Colors.white, size: 30),
                  SizedBox(height: 5),
                  Text("850K", style: TextStyle(color: Colors.white)),

                  SizedBox(height: 20),

                  Icon(Icons.star_border,
                      color: Colors.white, size: 30),
                  SizedBox(height: 5),
                  Text("4.5", style: TextStyle(color: Colors.white)),
                ],
              ),
            ),

            Positioned(
              bottom: 110,
              left: 20,
              right: 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage("assets/rating_image/Ellipse 3284.png"),
                      ),
                      const SizedBox(width: 10),

                      const Text(
                        "Cameron Williamson",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),

                      const SizedBox(width: 10),

                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 4),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(20)),
                        child: const Text(
                          "Follow",
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    "Tell me what excites you and makes you smile 🤗 Only good conversations – no bad texters!",
                    style: TextStyle(color: Colors.white),
                  ),

                  const SizedBox(height: 15),

                  /// Rating Stars
                  Row(
                    children: const [
                      Icon(Icons.star, color: Colors.amber, size: 30),
                      Icon(Icons.star, color: Colors.amber, size: 30),
                      Icon(Icons.star, color: Colors.amber, size: 30),
                      Icon(Icons.star_border, color: Colors.amber, size: 30),
                      Icon(Icons.star_border, color: Colors.amber, size: 30),
                    ],
                  )
                ],
              ),
            ),

            /// Bottom Navigation
            Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: Container(
                height: 70,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.vertical(
                      top: Radius.circular(25)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Icon(Icons.home, color: Colors.white),
                    Icon(Icons.star, color: Colors.white),
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.black,
                      child: Icon(Icons.add, color: Colors.white),
                    ),
                    Icon(Icons.chat_bubble_outline,
                        color: Colors.white),
                    Icon(Icons.person_outline,
                        color: Colors.white),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}