import 'package:flutter/material.dart';

class PrivacySettingsPage extends StatefulWidget {
  const PrivacySettingsPage({super.key});

  @override
  State<PrivacySettingsPage> createState() => _PrivacySettingsPageState();
}

class _PrivacySettingsPageState extends State<PrivacySettingsPage> {
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
      backgroundColor: const Color(0xff1A120B),
      appBar: AppBar(
        backgroundColor: const Color(0xff1A120B),
        elevation: 0,
        title: const Text("Privacy Settings"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            /// Public Profile Visibility
            ListTile(
              title: const Text(
                "Public Profile Visibility",
                style: TextStyle(color: Colors.white),
              ),
              trailing: Switch(
                value: publicProfile,
                activeColor: Colors.orange,
                onChanged: (value) {
                  setState(() {
                    publicProfile = value;
                  });
                },
              ),
            ),

            /// Third Party Data Sharing
            ListTile(
              title: const Text(
                "Third Party Data Sharing",
                style: TextStyle(color: Colors.white),
              ),
              trailing: Switch(
                value: thirdPartySharing,
                activeColor: Colors.orange,
                onChanged: (value) {
                  setState(() {
                    thirdPartySharing = value;
                  });
                },
              ),
            ),

            const SizedBox(height: 20),

            /// Blocked Profiles Section
            Container(
              decoration: BoxDecoration(
                color: const Color(0xff2C1F14),
                borderRadius: BorderRadius.circular(12),
              ),
              child: ExpansionTile(
                collapsedIconColor: Colors.white,
                iconColor: Colors.white,
                title: const Text(
                  "Blocked Profiles",
                  style: TextStyle(color: Colors.white),
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
          ],
        ),
      ),
    );
  }
}