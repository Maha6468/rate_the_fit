import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'chat1.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("duncan"),
        backgroundColor: Colors.black,
      ),
      bottomNavigationBar: const BottomBar(),
      body: Column(
        children: [

          /// Tabs
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              TabButton("All"),
              TabButton("Activity"),
              TabButton("Follows"),
              TabButton("Likes"),
            ],
          ),

          const SizedBox(height: 20),

          /// Activity List
          Expanded(
            child: ListView(
              children: const [
                ActivityTile("duncan liked your post"),
                ActivityTile("duncan commented"),
                ActivityTile("14 others liked your post"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TabButton extends StatelessWidget {
  final String title;
  const TabButton(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(title),
      backgroundColor: Colors.grey[900],
    );
  }
}

class ActivityTile extends StatelessWidget {
  final String text;
  const ActivityTile(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(),
      title: Text(text),
      subtitle: const Text("2h ago"),
    );
  }
}
