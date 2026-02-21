import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chat_Inner extends StatefulWidget {
  const Chat_Inner({super.key});

  @override
  State<Chat_Inner> createState() => _Chat_InnerState();
}

class _Chat_InnerState extends State<Chat_Inner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: CustomChatAppBar(),

    );
  }
}


class CustomChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomChatAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: const Icon(Icons.arrow_back, color: Colors.white),

      title: Row(
        children: const [
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage("assets/images/Darrell.png"),
          ),
          SizedBox(width: 10),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Darrell Steward',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  "Darrell__Steward__1111",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),

      actions: const [
        Icon(Icons.call_outlined, color: Colors.white),
        SizedBox(width: 15),
        Icon(Icons.videocam_outlined, color: Colors.white),
        SizedBox(width: 15),
      ],
    );
  }
}