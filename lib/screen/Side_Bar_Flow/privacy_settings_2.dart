import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Privacy_Settings_2 extends StatefulWidget {
  const Privacy_Settings_2({super.key});

  @override
  State<Privacy_Settings_2> createState() => _Privacy_SettingsState();
}

class _Privacy_SettingsState extends State<Privacy_Settings_2> {

  bool isNotificationEnabled = true;

  bool publicProfile = true;
  bool thirdPartySharing = true;

  List<Map<String, String>> blockedUsers = [
    {
      "name": "John Gray",
      "image": "https://randomuser.me/api/portraits/men/1.jpg"
    },
    {
      "name": "Raj Gupta",
      "image": "https://randomuser.me/api/portraits/men/2.jpg"
    },
    {
      "name": "John Stary",
      "image": "https://randomuser.me/api/portraits/men/3.jpg"
    },
    {
      "name": "Hasbook Rished",
      "image": "https://randomuser.me/api/portraits/men/4.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Privacy Settings",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        child: Column(
          children: [
            _viewPortSwitch(),
            _viewPortSwitch(),

             SizedBox(height: 20),

            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade700,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Theme(
                data: Theme.of(context).copyWith(
                  dividerColor: Colors.transparent,
                ),
                child: ExpansionTile(
                  collapsedIconColor: Colors.white,
                  iconColor: Colors.white,
                  title: Text(
                    "Blocked Profiles",
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),
                  ),
                  children: blockedUsers.map((user) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(user["image"]!),
                      ),
                      title: Text(
                        user["name"]!,
                        style: const TextStyle(color: Colors.white),
                      ),
                      trailing: TextButton(
                        onPressed: () {
                          setState(() {
                            blockedUsers.remove(user);
                          });
                        },
                        child: const Text(
                          "Unblock",
                          style: TextStyle(color: Colors.orange),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }


Widget _viewPortSwitch() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Public Profile Visibility",
          style: TextStyle(
            color: Colors.white70,
            fontSize: 17,
          ),
        ),
        Transform.scale(
          scale: 1.1,
          child: Switch(
            value: isNotificationEnabled,
            activeColor: Colors.white,
            activeTrackColor: Colors.amber.shade600,
            inactiveThumbColor: Colors.white54,
            inactiveTrackColor: Colors.white24,
            onChanged: (value) {
              setState(() {
                isNotificationEnabled = value;
              });
            },
          ),
        ),
      ],
    ),
  );
}}

