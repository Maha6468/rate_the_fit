import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notification_Settings extends StatefulWidget {
  const Notification_Settings({super.key});

  @override
  State<Notification_Settings> createState() => _Notification_SettingsState();
}

class _Notification_SettingsState extends State<Notification_Settings> {
  bool isNotificationEnabled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A0F07),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1A0F07),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Notification Settings",
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        child: Column(
          children: [
            /// 🔹 Toggle Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Enable Notification",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                  ),
                ),

                /// Switch
                Transform.scale(
                  scale: 1.1,
                  child: Switch(
                    value: isNotificationEnabled,
                    activeColor: Colors.white,
                    activeTrackColor: Colors.amber,
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

            const Spacer(),

            /// 🔹 Save Button
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF3B2F2F),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Settings Saved")),
                  );
                },
                child: const Text(
                  "Save Changes",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
