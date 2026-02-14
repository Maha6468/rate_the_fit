import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../coustom_widget/chatinput.dart';

class ChatScreen extends StatelessWidget {
  final String name;
  const ChatScreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {

    List messages = [
      {"msg": "Hello!", "isMe": false},
      {"msg": "Hi!", "isMe": true},
      {"msg": "How are you?", "isMe": false},
      {"msg": "I'm fine", "isMe": true},
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(name),
        backgroundColor: Colors.black,
        actions: const [
          Icon(Icons.call),
          SizedBox(width: 10),
          Icon(Icons.video_call),
          SizedBox(width: 10),
        ],
      ),

      bottomNavigationBar: ChatInput(),

      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: messages.length,
        itemBuilder: (context, index) {

          bool isMe = messages[index]['isMe'];

          return Align(
            alignment:
            isMe ? Alignment.centerRight : Alignment.centerLeft,
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: isMe
                    ? Colors.orange.withOpacity(.3)
                    : Colors.grey[900],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(messages[index]['msg']),
            ),
          );
        },
      ),
    );
  }
}
