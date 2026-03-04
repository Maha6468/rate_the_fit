import 'package:flutter/material.dart';

class Add_To_Story extends StatelessWidget {
  const Add_To_Story({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.close, color: Colors.white),
                  SizedBox(width: 10),
                  Text(
                    "Add to Story",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),

              SizedBox(height: 30),

              /// Camera Box
              buildGradientBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.camera_alt, color: Colors.white),
                    SizedBox(height: 8),
                    Text(
                      "Camera",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                height: 120,
              ),

              SizedBox(height: 20),

              /// Upload Row
              Row(
                children: [
                  Expanded(
                    child: buildGradientBox(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.photo, color: Colors.white),
                          SizedBox(height: 8),
                          Text(
                            "Upload Photo",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      height: 100,
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: buildGradientBox(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.videocam, color: Colors.white),
                          SizedBox(height: 8),
                          Text(
                            "Upload Video",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      height: 100,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 30),

              /// Text Field
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey),
                ),
                child: TextField(
                  maxLines: 4,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "What's on your mind?",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none,
                  ),
                ),
              ),

              Spacer(),

              /// Post Button
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown.shade800,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Post",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Gradient Container Widget
  Widget buildGradientBox({
    required Widget child,
    required double height,
  }) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [
            Colors.brown.shade900,
            Colors.black,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: child,
    );
  }
}