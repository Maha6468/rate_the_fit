import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Privacy_Settings extends StatefulWidget {
  const Privacy_Settings({super.key});

  @override
  State<Privacy_Settings> createState() => _Privacy_SettingsState();
}

class _Privacy_SettingsState extends State<Privacy_Settings> {
  bool isNotificationEnabled = true;
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
            _viewPortSwitch()
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

