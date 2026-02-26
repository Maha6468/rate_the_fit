import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:record/record.dart';

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
      body: Column(
        children: [
          Expanded(child: ChatList()),
          MessageInputBar(),
        ],
      ),
    );
  }
}

class CustomChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomChatAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  //Size get preferredSize => const Size.fromHeight(80);
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

      actions: [
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
      {
        "text": "Lorem Ipsum is simply dummy text of the printing",
        "isMe": true,
      },
      {
        "text": "Lorem Ipsum is simply dummy text of the printing",
        "isMe": false,
      },
      {
        "text": "Lorem Ipsum is simply dummy text of the printing",
        "isMe": true,
      },
      {
        "text": "Lorem Ipsum is simply dummy text of the printing",
        "isMe": false,
      },
      {
        "text": "Lorem Ipsum is simply dummy text of the printing",
        "isMe": true,
      },
      {
        "text": "Lorem Ipsum is simply dummy text of the printing",
        "isMe": true,
      },
      {
        "text": "Lorem Ipsum is simply dummy text of the printing",
        "isMe": false,
      },
      {
        "text": "Lorem Ipsum is simply dummy text of the printing",
        "isMe": false,
      },
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
          color: isMe ? const Color(0xff3b2a22) : const Color(0xff1c1c1e),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Text(message, style: const TextStyle(color: Colors.white)),
      ),
    );
  }
}

class MessageInputBar extends StatefulWidget {
  const MessageInputBar({super.key});

  @override
  State<MessageInputBar> createState() => _MessageInputBarState();
}

class _MessageInputBarState extends State<MessageInputBar> {
  final ImagePicker _picker=ImagePicker();
  File? _image;

  Future<void> openCamera() async {
    final XFile? photo = await _picker.pickImage(source: ImageSource.camera);
    if (photo != null) {
      setState(() {
        _image = File(photo.path);
      });
    }
  }


  final AudioRecorder _recorder=AudioRecorder();
  bool _isRecording=false;
  String? _filePath;

  Future<void> _startRecording() async {
    if (await _recorder.hasPermission()) {
      final dir = await getApplicationDocumentsDirectory();

      _filePath = '${dir.path}/voice_${DateTime.now().millisecondsSinceEpoch}.m4a';

      await _recorder.start(
        const RecordConfig(),
        path: _filePath!,
      );

      setState(() => _isRecording = true);
    }
  }

  Future<void> _stopRecording() async {
    await _recorder.stop();
    setState(() => _isRecording = false);

    print("Saved at: $_filePath"); // এই file পরে chat এ পাঠাতে পারবা
  }

  @override
  void dispose() {
    _recorder.dispose();
    super.dispose();
  }

  Future<void> openGallery() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        _image = File(image.path);
      });
    }
  }



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (_image != null)
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.file(
                  _image!,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
            ),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            height: 70,
            decoration: BoxDecoration(
              color: const Color(0xff2a201a),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: [
                IconButton(onPressed:openCamera, icon: Icon(Icons.camera_alt, color: Colors.white70, size: 30)),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Type Your message here.....",
                      hintStyle: TextStyle(color: Colors.white54),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: _isRecording ? _stopRecording : _startRecording,
                  icon: Icon(
                    _isRecording ? Icons.stop : Icons.mic,
                    color: _isRecording ? Colors.red : Colors.white70,
                    size: 30,
                  ),
                ),
                 SizedBox(width: 10),
                 //Icon(Icons.image_outlined, color: Colors.white70, size: 30),
                IconButton(
                  onPressed: openGallery,
                  icon: const Icon(Icons.image_outlined, color: Colors.white70, size: 30),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
