import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Rating_Home_1 extends StatelessWidget {
  const Rating_Home_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(padding: const EdgeInsets.only(left: 15),
          child: CircleAvatar(
            radius: 28,
            backgroundColor: Colors.black,
            child: Image.asset(
              "assets/images/star.png",
              height: 100,
              width: 100,
              fit: BoxFit.contain,
            ),
          ),
        ),
        title: Text(
          "Welcome 👋",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(Icons.menu, color: Colors.white),
          ),
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/rating_image/max-titov-Mhktr6dFD3I-unsplash 1 (1).png",
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),

            Positioned(
              right: 15,
              bottom: 180,
              child: Column(
                children: const [
                  Icon(Icons.favorite_border, color: Colors.white, size: 30),
                  SizedBox(height: 5),
                  Text("4.5M", style: TextStyle(color: Colors.white)),

                  SizedBox(height: 5),

                  Icon(Icons.chat_bubble_outline,color: Colors.white,size: 30,),
                  SizedBox(height: 5),
                  Text("25.2K", style: TextStyle(color: Colors.white)),

                  SizedBox(height: 5),

                  Icon(Icons.bookmark_border, color: Colors.white, size: 30),
                  SizedBox(height: 5),
                  Text("850K", style: TextStyle(color: Colors.white)),

                  SizedBox(height: 5),

                  Icon(Icons.star_border, color: Colors.white, size: 30),
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
                        backgroundImage: AssetImage(
                          "assets/rating_image/Ellipse 3284.png",
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text("Cameron Williamson",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(width: 10),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text("Follow",style: TextStyle(color: Colors.white),),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10),

                  const Text("Tell me what excites you and makes you smile 🤗 Only good conversations – no bad texters!",
                    style: TextStyle(color: Colors.white),
                  ),

                  const SizedBox(height: 15),

                  Row(
                    children: const [
                      Icon(Icons.star, color: Colors.amber, size: 30),
                      Icon(Icons.star, color: Colors.amber, size: 30),
                      Icon(Icons.star, color: Colors.amber, size: 30),
                      Icon(Icons.star_border, color: Colors.amber, size: 30),
                      Icon(Icons.star_border, color: Colors.amber, size: 30),
                    ],
                  ),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
