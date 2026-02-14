import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../coustom_widget/TextField.dart';
import 'chat2.dart';
import 'chat_inner.dart';

class MessageListScreen extends StatelessWidget {
  const MessageListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List users = [
      "Brooklyn Simmons",
      "Darrell Steward",
      "Courtney Henry",
      "Jacob Jones",
      "Dianne Russell",
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Message",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      bottomNavigationBar: BottomBar(),
      body: Column(
        children: [
          // Padding(
          //   padding: const EdgeInsets.all(12),
          //   child: TextField(
          //     decoration: InputDecoration(
          //       hintText: "Search...",
          //       hintStyle: TextStyle(color: Colors.white),
          //       filled: true,
          //       fillColor: Colors.grey[900],
          //       prefixIcon: Icon(Icons.search,color: Colors.white,size: 30,),
          //       border: OutlineInputBorder(
          //         borderRadius: BorderRadius.circular(20),
          //         borderSide: BorderSide.none
          //       ),
          //     ),
          //   ),
          // ),

          Row(
            children: [
              Expanded(
                child: Text_Field(hintText: "Search...",
                ),
              ),

            ],
          ),

          /// User List
          Expanded(
            child: ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ChatScreen(
                          name: users[index],
                        ),
                      ),
                    );
                  },
                  leading: const CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        "https://i.pravatar.cc/150?img=3"),
                  ),
                  title: Text(users[index]),
                  subtitle: const Text("Where did you get that from?"),
                  trailing: const CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.orange,
                    child: Text("1",
                        style: TextStyle(fontSize: 12)),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}



class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {},
          ),

          IconButton(
            icon: const Icon(Icons.star),
            onPressed: () {},
          ),

          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.orange,
            child: const Icon(Icons.add),
          ),

          IconButton(
            icon: const Icon(Icons.message),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const ActivityScreen(),
                ),
              );
            },
          ),

          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

