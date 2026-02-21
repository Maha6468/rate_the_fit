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
      body:Column(
        children: [

          Expanded(child: ChatList()),

          MessageInputBar(),
        ],
      )
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

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {

    final List<Map<String, dynamic>> messages = [
      {"text": "Lorem Ipsum is simply dummy text of the printing", "isMe": true},
      {"text": "Lorem Ipsum is simply dummy text of the printing", "isMe": false},
      {"text": "Lorem Ipsum is simply dummy text of the printing", "isMe": true},
      {"text": "Lorem Ipsum is simply dummy text of the printing", "isMe": false},
      {"text": "Lorem Ipsum is simply dummy text of the printing", "isMe": true},
      {"text": "Lorem Ipsum is simply dummy text of the printing", "isMe": true},
      {"text": "Lorem Ipsum is simply dummy text of the printing", "isMe": false},
      {"text": "Lorem Ipsum is simply dummy text of the printing", "isMe": false},
    ];

    return ListView.builder(
      padding: const EdgeInsets.only(top: 30),
      itemCount: messages.length,
      itemBuilder: (context, index) {
        return ChatBubble(
          message: messages[index]["text"],
          isMe: messages[index]["isMe"],
        );
      },
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isMe;

  const ChatBubble({super.key, required this.message, required this.isMe});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        constraints: const BoxConstraints(maxWidth: 260),
        decoration: BoxDecoration(
          color: isMe
              ? const Color(0xff3b2a22)
              : const Color(0xff1c1c1e),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Text(
          message,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}


class MessageInputBar extends StatelessWidget {
  const MessageInputBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 70,
        decoration: BoxDecoration(
          color: const Color(0xff2a201a),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: [
            const Icon(Icons.camera_alt, color: Colors.white70,size: 30,),
            const SizedBox(width: 10),
            const Expanded(
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: "Type Your message here.....",
                  hintStyle: TextStyle(color: Colors.white54),
                  border: InputBorder.none,
                ),
              ),
            ),
            const Icon(Icons.mic, color: Colors.white70,size: 30,),
            const SizedBox(width: 10),
            const Icon(Icons.image_outlined, color: Colors.white70,size: 30,),
          ],
        ),
      ),
    );
  }
}
