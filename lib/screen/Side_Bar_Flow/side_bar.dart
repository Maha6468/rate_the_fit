import 'package:flutter/material.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _HomePageState();
}

class _HomePageState extends State<SideBar> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  bool isSwitched = true;
  bool isMenuOpen = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF0D0702),
      child: SafeArea(
        child: ListView(
          children: [
            SizedBox(height: 20),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: const CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.amber,
                    child: Icon(Icons.star, color: Colors.black),
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.close, color: Colors.amber),
                ),
              ],
            ),

            _menuItem(Icons.person_outline, "Account Settings",routeName: "/accountSettings"),
            _menuItem(Icons.notifications_none, "Notification", showBadge: true,routeName: "/notifications"),
            _menuItem(Icons.search, "Notification Settings",routeName: "/notificationSettings"),
            _menuItem(Icons.tune, "Preferences",routeName: "/preferences"),
            _menuItem(Icons.shield_outlined, "Privacy Settings",routeName: "/privacySettings"),
            _menuItem(Icons.lock_outline, "Security Settings", routeName: "/securitySettings"),
            _menuItem(Icons.help_outline, "FAQ", routeName: "/faq"),
            _menuItem(Icons.privacy_tip_outlined, "Privacy Policy",routeName: "/privacyPolicy"),
            _menuItem(Icons.description_outlined, "Terms Of Services"),
            _viewPortSwitch(),
            SizedBox(height: 10),
            _logoutButton(),
          ],
        ),
      ),
    );
  }



  Widget _menuItem(IconData icon, String title, {bool showBadge = false,String? routeName}) {
    return ListTile(
      leading: Icon(icon, color: Colors.white70),
      title: Row(
        children: [
          Text(title, style: const TextStyle(color: Colors.white70)),
          if (showBadge)
            Container(
              margin: const EdgeInsets.only(left: 8),
              padding: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              child: const Text(
                "1",
                style: TextStyle(fontSize: 10, color: Colors.white),
              ),
            ),
        ],
      ),
      onTap: () {
        Navigator.pop(context);

        if (routeName != null) {
          Navigator.pushNamed(context, routeName);
        }
      },
    );
  }

  Widget _logoutButton() {
    return ListTile(
      leading: const Icon(Icons.logout, color: Colors.white70),
      title: const Text("Log Out", style: TextStyle(color: Colors.white70)),
      onTap: () {},
    );
  }

  Widget _viewPortSwitch() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          const Text("View Port", style: TextStyle(color: Colors.white70)),
          const Spacer(),
          Switch(
            value: isSwitched,
            activeColor: Colors.amber,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
