
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Home_P extends StatefulWidget {
  const Home_P({super.key});
  @override
  State<Home_P> createState() => _HomeState();
}
class _HomeState extends State<Home_P> {
  bool isMenuOpen = false;
  int _page = 0;

  final List<String> userImage = [
    "assets/images/firad.JPG",
    "assets/images/ibnul.JPG",
    "assets/images/mariya.jpg",
    "assets/images/nahid.JPG",
    "assets/images/saim.jpg",
  ];

  final List<String> userNames = ["Firad", "Ibnul", "Mariya", "Nahid", "Saim"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Home"),
      ),

      /// 🔥 BODY এখন Stack (Drawer Overlay System)
      body: Stack(
        children: [
          _buildHomeContent(),
          if (isMenuOpen) _buildOverlay(),

          _buildSideMenu(),
        ],
      ),


      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: Colors.brown.shade800,
        buttonBackgroundColor: Colors.amber,
        animationDuration: const Duration(milliseconds: 300),
        items: const <Widget>[
          Icon(Icons.home, size: 30, color: Colors.white),
          Icon(Icons.star, size: 30, color: Colors.white),
          Icon(Icons.add, size: 30, color: Colors.white),
          Icon(Icons.message, size: 30, color: Colors.white),
          Icon(Icons.person, size: 30, color: Colors.white),
        ],

        onTap: (index) {
          if (index == 4) {
            setState(() => isMenuOpen = true);
          } else {
            setState(() => _page = index);
          }
        },
      ),
    );
  }

  Widget _buildHomeContent() {
    final width = MediaQuery.of(context).size.width;

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.black, Color(0xFF3B2F2F)],
         // begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),

              /// STORY LIST
              SizedBox(
                height: width * 0.25,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: userImage.length,
                  itemBuilder: (context, index) {
                    return _buildStory(userImage[index], userNames[index]);



                  },
                ),
              ),

              const SizedBox(height: 20),

              _buildPostCard(),
              _buildPostCard(),
            ],
          ),
        ),
      ),
    );
  }



Widget _buildStory(String img, String name) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8),
    child: Column(
      children: [
        CircleAvatar(radius: 30, backgroundImage: AssetImage(img)),
        const SizedBox(height: 5),
        Text(name, style: const TextStyle(color: Colors.white)),
      ],
    ),
  );
}





  /// 🔥 DARK BACKGROUND
  Widget _buildOverlay() {
    return GestureDetector(
      onTap: () => setState(() => isMenuOpen = false),
      child: Container(color: Colors.black.withOpacity(0.6)),
    );
  }

  /// 🔥 SIDE MENU (YOUR SCREEN)
  Widget _buildSideMenu() {
    final width = MediaQuery.of(context).size.width;

    return AnimatedPositioned(
      duration: const Duration(milliseconds: 300),
      left: isMenuOpen ? 0 : -width * 0.75,
      top: 0,
      bottom: 0,
      child: Container(
        width: width * 0.75,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        decoration: const BoxDecoration(
          color: Color(0xFF0D0702),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.amber,
                  child: Icon(Icons.star, color: Colors.black),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () => setState(() => isMenuOpen = false),
                  icon: const Icon(Icons.close, color: Colors.amber),
                )
              ],
            ),

            const SizedBox(height: 30),

            _menuItem(Icons.person_outline, "Account Settings"),
            _menuItem(Icons.notifications_none, "Notification"),
            _menuItem(Icons.tune, "Preferences"),
            _menuItem(Icons.security, "Security Settings"),
            _menuItem(Icons.help_outline, "FAQ"),

            const Spacer(),

            const Text("Log Out", style: TextStyle(color: Colors.white70)),
          ],
        ),
      ),
    );
  }

  Widget _menuItem(IconData icon, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: Row(
        children: [
          Icon(icon, color: Colors.white70),
          const SizedBox(width: 14),
          Text(title, style: const TextStyle(color: Colors.white70)),
        ],
      ),
    );
  }


  Widget _buildPostCard() {
    return Container(
      margin: const EdgeInsets.all(16),
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(
          image: AssetImage("assets/images/firad.JPG"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

