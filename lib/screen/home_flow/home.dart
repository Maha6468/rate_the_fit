// import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
//
// import '../../coustom_widget/custom_star_image.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
//
// class Home extends StatefulWidget {
//   const Home({super.key});
//
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   int _page = 0;
//   final List<String> userImage = [
//     "assets/images/firad.JPG",
//     "assets/images/ibnul.JPG",
//     "assets/images/mariya.jpg",
//     "assets/images/nahid.JPG",
//     "assets/images/saim.jpg",
//   ];
//   final List<String> userNames = ["Firad", "Ibnul", "Mariya", "Nahid", "Saim"];
//
//   @override
//   Widget build(BuildContext context) {
//     final width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         leading: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Custom_Star_Image(alignment: Alignment.topLeft),
//         ),
//         actions: [
//           IconButton(
//             onPressed: () {},
//             icon: Icon(Icons.search, size: 45, color: Colors.grey),
//           ),
//         ],
//       ),
//       body: Container(
//       height: MediaQuery.of(context).size.height,
//       width: MediaQuery.of(context).size.width,
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: [Colors.black, Color(0xFF3B2F2F)],
//           begin: Alignment.bottomLeft,
//           end: Alignment.topRight,
//         ),
//       ),
//       child: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(height: 16),
//               SizedBox(
//                 height: width * 0.25,
//                 child: ListView.builder(
//                   scrollDirection: Axis.horizontal,
//                   padding: EdgeInsets.symmetric(horizontal: 10),
//                   itemCount: userImage.length + 1,
//                   itemBuilder: (context, index) {
//                     if (index == 0) {
//                       return Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 5.0),
//                         child: Column(
//                           children: [
//                             CircleAvatar(
//                               radius: 30,
//                               backgroundColor: Colors.transparent,
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                   border: Border.all(
//                                     color: Colors.white,
//                                     width: .8,
//                                   ),
//                                   shape: BoxShape.circle,
//                                 ),
//                                 child: IconButton(
//                                   onPressed: () {
//                                     print("maha");
//                                   },
//                                   icon: Icon(Icons.add, color: Colors.white),
//                                 ),
//                               ),
//                             ),
//                             Text(
//                               "Add Story",
//                               style: TextStyle(color: Colors.white),
//                             ),
//                           ],
//                         ),
//                       );
//                     } else {
//                       final img = userImage[index - 1];
//                       final name = userNames[index - 1];
//                       return buildStory(img, name);
//                     }
//                   },
//                 ),
//               ),
//               SizedBox(height: 10),
//              buildPostCard(context),
//               buildPostCard(context),
//             ],
//           ),
//         ),
//       ),
//               ),
//
//       extendBody: true,
//       bottomNavigationBar: CurvedNavigationBar(
//         backgroundColor: Colors.transparent,
//         color: Colors.brown.shade800,
//         buttonBackgroundColor: Colors.amber,
//         //height: 60,
//         animationDuration: const Duration(milliseconds: 300),
//         items: const <Widget>[
//           Icon(Icons.home, size: 30, color: Colors.white),
//           Icon(Icons.star, size: 30, color: Colors.white),
//           Icon(Icons.add, size: 30, color: Colors.white),
//           Icon(Icons.textsms_sharp, size: 30, color: Colors.white),
//           Icon(Icons.person, size: 30, color: Colors.white),
//
//         ],
//
//         onTap: (index) {
//           setState(() {
//             _page = index;
//           });
//         },
//
//
//       ),
//     );
//   }
// }
//
// Widget buildStory(String imgPath, String name) {
//   return Padding(
//     padding: const EdgeInsets.symmetric(horizontal: 8.0),
//     child: Column(
//       children: [
//         CircleAvatar(radius: 30, backgroundImage: AssetImage(imgPath)),
//         Text(name, style: const TextStyle(color: Colors.white)),
//       ],
//     ),
//   );
// }
//
// Widget buildPostCard(BuildContext context) {
//   return Container(
//     // height: MediaQuery.of(context).size.height,
//     // width: MediaQuery.of(context).size.width,
//     decoration: BoxDecoration(
//       gradient: LinearGradient(
//         colors: [Colors.black, Color(0xFF3B2F2F)],
//         begin: Alignment.bottomLeft,
//         end: Alignment.topRight,
//       ),
//     ),
//
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         ListTile(
//           leading: Transform.translate(
//             offset: Offset(-1, 0),
//             child: const CircleAvatar(
//               backgroundImage: AssetImage('assets/images/firad.JPG'),
//             ),
//           ),
//           title: Transform.translate(
//             offset: Offset(-6, 0),
//             child: const Text(
//               "Cameron Williamson",
//               style: TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 12,
//               ),
//               maxLines: 1,
//               overflow: TextOverflow.visible,
//               softWrap: false,
//             ),
//           ),
//           subtitle: Transform.translate(
//             offset: Offset(-6, 0),
//             child: const Text(
//               "7529 E. Pecan St.",
//               style: TextStyle(color: Colors.grey, fontSize: 11),
//             ),
//           ),
//           trailing: Transform.translate(
//             offset: Offset(16, 0),
//             child: Container(
//               padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 0),
//               decoration: BoxDecoration(
//                 //color: Color(0xFF3B2F2F),
//                 color: Colors.black26,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(-5),
//                   topRight: Radius.circular(30),
//                   bottomLeft: Radius.circular(30),
//                   bottomRight: Radius.circular(-5),
//                 ),
//               ),
//               child: TextButton(
//                 onPressed: () {},
//                 child: Text(
//                   "Style Type",
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//             ),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Stack(
//             children: [
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(20),
//                 child: Image.asset(
//                   "assets/images/firad.JPG",
//                   fit: BoxFit.cover,
//                   width: double.infinity,
//                   height: 250, // চাইলে height adjust করো
//                 ),
//               ),
//
//               // 🔹 Rating badge (bottom-right)
//               Positioned(
//                 bottom: 0,
//                 right: 0,
//                 child: Container(
//                   padding: const EdgeInsets.symmetric(
//                     horizontal: 10,
//                     vertical: 4,
//                   ),
//                   decoration: BoxDecoration(
//                     color: Colors.black,
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(10),
//                       bottomRight: Radius.circular(18),
//                     ),
//                   ),
//                   child: Row(
//                     children: const [
//                       Icon(Icons.star, color: Colors.amber, size: 18),
//                       SizedBox(width: 4),
//                       Text(
//                         "3.5",
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
//           child: Stack(
//             alignment: Alignment.center,
//             children: [
//               Container(
//                 height: 2,
//                 margin: const EdgeInsets.symmetric(horizontal: 8),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(2),
//                 ),
//               ),
//
//               Positioned.fill(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: List.generate(5, (index) {
//                     return Container(
//                       width: 1,
//                       height: 8,
//                       //color: Colors.grey.shade700,
//                     );
//                   }),
//                 ),
//               ),
//
//               //RatingBar
//             ],
//           ),
//         ),
//
//         Padding(
//           padding: EdgeInsets.symmetric(horizontal: 12.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Row(
//                 children: [
//                   IconButton(
//                     onPressed: () {},
//                     icon: Icon(Icons.favorite_border, color: Colors.white70),
//                   ),
//                   Text("Like", style: TextStyle(color: Colors.white)),
//                 ],
//               ),
//               Row(
//                 children: [
//                   IconButton(
//                     onPressed: () {},
//                     icon: Icon(Icons.textsms_sharp, color: Colors.white70),
//                   ),
//                   Text("Comments", style: TextStyle(color: Colors.white)),
//                 ],
//               ),
//               Row(
//                 children: [
//                   IconButton(
//                     onPressed: () {},
//                     icon: Icon(Icons.bookmark_border, color: Colors.white70),
//                   ),
//                   Text("Save", style: TextStyle(color: Colors.white)),
//                 ],
//               ),
//             ],
//           ),
//         ),
//         //const SizedBox(height: 10),
//       ],
//     ),
//   );
// }




import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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

      /// 🔥 Bottom Navigation
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
            setState(() => isMenuOpen = true); // open drawer
          } else {
            setState(() => _page = index);
          }
        },
      ),
    );
  }

  /// 🔥 MAIN HOME UI
  Widget _buildHomeContent() {
    final width = MediaQuery.of(context).size.width;

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.black, Color(0xFF3B2F2F)],
          begin: Alignment.bottomLeft,
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

