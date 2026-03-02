import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF140B05),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1A0F07),
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
      body: ListView.separated(
        padding: const EdgeInsets.only(top: 10),
        itemCount: 6,
        separatorBuilder: (_, __) => Divider(
          color: Colors.white.withOpacity(0.05),
          thickness: 1,
        ),
        itemBuilder: (context, index) {
          return const _NotificationTile();
        },
      ),
    );
  }
}

class _NotificationTile extends StatelessWidget {
  const _NotificationTile();

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),

      /// 🔹 Leading Circle Avatar
      leading: Container(
        height: 45,
        width: 45,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFFB47B1F),
        ),
        alignment: Alignment.center,
        child: const Text(
          "N",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      /// 🔹 Title + Subtitle
      title: const Text(
        "Ihr neuer Termin steht vor der Tür.",
        style: TextStyle(color: Colors.white, fontSize: 15),
      ),
      subtitle: const Padding(
        padding: EdgeInsets.only(top: 4),
        child: Text(
          "Ihr neuer Termin steht vor der Tür.",
          style: TextStyle(color: Colors.white38, fontSize: 13),
        ),
      ),
    );
  }
}