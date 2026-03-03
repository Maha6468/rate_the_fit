import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Privacy_Settings extends StatefulWidget {
  const Privacy_Settings({super.key});

  @override
  State<Privacy_Settings> createState() => _Privacy_SettingsState();
}

class _Privacy_SettingsState extends State<Privacy_Settings> {
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
          "Notifications",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
