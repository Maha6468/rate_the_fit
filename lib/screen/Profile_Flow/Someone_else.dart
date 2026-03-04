import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color(0xFF120A06),
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _headerSection(),
              _profileInfo(),
              _categorySection(),
              _gridSection(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _bottomNav(),
    );
  }
}



Widget _headerSection() {
  return Stack(
    clipBehavior: Clip.none,
    children: [
      Container(
        height: 180,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/image_shop.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Positioned(
        top: 15,
        left: 15,
        child: Icon(Icons.arrow_back, color: Colors.white),
      ),
      Positioned(
          top: 15,
          left: 50,
          child: Text("Profile User Name",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)),

      Positioned(
        bottom: -40,
        left: 0,
        right: 0,
        child: Center(
          child: Container(
            height: 90,
            width: 90,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/images/Ellipse 209.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    ],
  );
}


Widget _profileInfo() {
  return Padding(
    padding: const EdgeInsets.only(top: 18, left: 20, right: 20),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Column(
              children: [
                Text("29k",style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                Text("followers", style: TextStyle(color: Colors.grey))
              ],
            ),
            Column(
              children: [
                Text("1,545",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                Text("following", style: TextStyle(color: Colors.grey))
              ],
            ),
          ],
        ),
        const SizedBox(height: 15),
        Align(
          alignment: Alignment.centerLeft,
          child: Text("Cameron Williamson",style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600)),
        ),
        const SizedBox(height: 5),
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Lorem Ipsum is simply dummy text of the printing and typeset industry.",
            style: TextStyle(color: Colors.grey),
          ),
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            Expanded(
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.grey),
                ),
                child: const Text("Message",
                    style: TextStyle(color: Colors.white)),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF3A2418),
                ),
                onPressed: () {},
                child: const Text("Following"),
              ),
            ),
          ],
        )
      ],
    ),
  );
}


Widget _categorySection() {
  List<String> categories = ["All (233)", "Red (20)", "Casual (20)", "Blue (20)"];
  return Container(
    height: 60,
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 8),
          padding: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Text(categories[index],
                style: const TextStyle(color: Colors.white)),
          ),
        );
      },
    ),
  );
}


Widget _gridSection() {
  List<String> profileImages = [
    "assets/profile_flow_pic/image.png",
    "assets/profile_flow_pic/image (1).png",
    "assets/profile_flow_pic/max-titov-Mhktr6dFD3I-unsplash 1.png",
    "assets/profile_flow_pic/max-titov-Mhktr6dFD3I-unsplash 2.png",
    "assets/profile_flow_pic/max-titov-Mhktr6dFD3I-unsplash 3.png",
    "assets/profile_flow_pic/max-titov-Mhktr6dFD3I-unsplash 4.png",
    "assets/profile_flow_pic/max-titov-Mhktr6dFD3I-unsplash 6.png",
    "assets/profile_flow_pic/max-titov-Mhktr6dFD3I-unsplash 7.png",
    "assets/profile_flow_pic/max-titov-Mhktr6dFD3I-unsplash 8.png",

  ];

  return Padding(
    padding: const EdgeInsets.all(12),
    child: GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: profileImages.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            profileImages[index],
            fit: BoxFit.cover,
          ),
        );
      },
    ),
  );
}

Widget _bottomNav() {
  return BottomNavigationBar(
    backgroundColor: const Color(0xFF0E0704),
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.grey,
    items: const [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
      BottomNavigationBarItem(icon: Icon(Icons.star_border), label: ""),
      BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline), label: ""),
      BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline), label: ""),
      BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
    ],
  );
}