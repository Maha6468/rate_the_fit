// import 'package:flutter/material.dart';
//
// class HomePage_P extends StatefulWidget {
//   const HomePage_P({super.key});
//
//   @override
//   State<HomePage_P> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage_P> {
//
//   final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
//   bool isSwitched = true;
//   bool isMenuOpen = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: scaffoldKey,
//       appBar: AppBar(
//         title: const Text("Home"),
//         automaticallyImplyLeading: false,
//       ),
//
//       drawer: Drawer(
//         backgroundColor: const Color(0xFF0D0702),
//         child: ListView(
//           children:  [
//             Row(
//               children: [
//                 const CircleAvatar(
//                   radius: 25,
//                   backgroundColor: Colors.amber,
//                   child: Icon(Icons.star, color: Colors.black),
//                 ),
//                 const Spacer(),
//                 IconButton(
//                   onPressed: () => setState(() => isMenuOpen = false),
//                   //onPressed: (){},
//                   icon:Icon(Icons.close, color: Colors.amber),
//                 ),
//               ],
//             ),
//             // ListTile(
//             //   title: Text("Profile"),
//             // ),
//             // ListTile(
//             //   title: Text("Settings"),
//             // ),
//
//             _menuItem(Icons.person_outline, "Account Settings"),
//             _menuItem(
//               Icons.notifications_none,
//               "Notification",
//               showBadge: true,
//             ),
//             _menuItem(Icons.search, "Notification Settings"),
//             _menuItem(Icons.tune, "Preferences"),
//             _menuItem(Icons.shield_outlined, "Privacy Settings"),
//             _menuItem(Icons.lock_outline, "Security Settings"),
//             _menuItem(Icons.help_outline, "FAQ"),
//             _menuItem(Icons.privacy_tip_outlined, "Privacy Policy"),
//             _menuItem(Icons.description_outlined, "Terms Of Services"),
//
//             Spacer(),
//           _viewPortSwitch(),
//             SizedBox(height: 20),
//             _logoutButton(),
//
//           ],
//         ),
//       ),
//
//       body: const Center(
//         child: Text("Home Screen"),
//       ),
//
//       bottomNavigationBar: BottomNavigationBar(
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: "Home",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.menu),
//             label: "Menu",
//           ),
//         ],
//         onTap: (index) {
//           if(index == 1){
//             scaffoldKey.currentState?.openDrawer();
//           }
//         },
//       ),
//     );
//   }
//
//   Widget _menuItem(IconData icon, String title, {bool showBadge = false}) {
//     return ListTile(
//       leading: Icon(icon, color: Colors.white70),
//       title: Row(
//         children: [
//           Text(title, style: const TextStyle(color: Colors.white70)),
//           if (showBadge)
//             Container(
//               margin: const EdgeInsets.only(left: 8),
//               padding: const EdgeInsets.all(4),
//               decoration: const BoxDecoration(
//                 color: Colors.red,
//                 shape: BoxShape.circle,
//               ),
//               child: const Text(
//                 "1",
//                 style: TextStyle(fontSize: 10, color: Colors.white),
//               ),
//             ),
//         ],
//       ),
//       onTap: () {},
//     );
//   }
//
//
//
//   Widget _logoutButton() {
//     return ListTile(
//       leading: const Icon(Icons.logout, color: Colors.white70),
//       title: const Text("Log Out", style: TextStyle(color: Colors.white70)),
//       onTap: () {},
//     );
//   }
//
//   Widget _viewPortSwitch() {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20),
//       child: Row(
//         children: [
//           const Text("View Port", style: TextStyle(color: Colors.white70)),
//           const Spacer(),
//           Switch(
//             value: isSwitched,
//             activeColor: Colors.amber,
//             onChanged: (value) {
//               setState(() {
//                 isSwitched = value;
//               });
//             },
//           ),
//         ],
//       ),
//     );
//   }
//
//
// }