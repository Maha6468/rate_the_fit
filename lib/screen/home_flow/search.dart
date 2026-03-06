import 'package:flutter/material.dart';

class  Search_1 extends StatelessWidget {
  Search_1({super.key});

  final List<String> images = [
    "assets/profile_flow_pic/max-titov-Mhktr6dFD3I-unsplash 8.png",
    "assets/profile_flow_pic/image (1).png",
    "assets/profile_flow_pic/image.png",
    "assets/profile_flow_pic/max-titov-Mhktr6dFD3I-unsplash 1.png",
    "assets/profile_flow_pic/max-titov-Mhktr6dFD3I-unsplash 2.png",
    "assets/profile_flow_pic/max-titov-Mhktr6dFD3I-unsplash 7.png",
    "assets/profile_flow_pic/max-titov-Mhktr6dFD3I-unsplash 4.png",
    "assets/profile_flow_pic/max-titov-Mhktr6dFD3I-unsplash 6.png",
    "assets/profile_flow_pic/max-titov-Mhktr6dFD3I-unsplash 3.png",

  ];

  final List<String> categories = [
    "For You",
    "Red",
    "Casual",
    "Blue",
    "Pink",
    "Edgy",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.arrow_back,color: Colors.white),
        title: const Text(
          "Explore",
          style: TextStyle(color: Colors.white),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.search,color: Colors.white),
          )
        ],
      ),

      body: Column(
        children: [

          SizedBox(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context,index){
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal:8),
                  padding: const EdgeInsets.symmetric(horizontal:15),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white24),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    categories[index],
                    style: const TextStyle(color: Colors.white),
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 10),

          Expanded(
            child: GridView.builder(
              itemCount: images.length,
              gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 6,
                crossAxisSpacing: 6,
              ),
              itemBuilder: (context,index){
                return ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    images[index],
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          )
        ],
      ),

      /// FLOATING +
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: const Icon(Icons.add),
        onPressed: () {},
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      /// BOTTOM NAVBAR
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Icon(Icons.home,color: Colors.white),
              Icon(Icons.star_border,color: Colors.white),
              SizedBox(width: 40),
              Icon(Icons.chat_bubble_outline,color: Colors.white),
              Icon(Icons.person_outline,color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}