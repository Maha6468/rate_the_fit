import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Chat_1 extends StatelessWidget {
  const Chat_1({super.key});

  final List<Map<String, String>> chats = const [
    {
      "name": "Brooklyn Simmons",
      "message": "Where did you get that from?",
      "image": "https://randomuser.me/api/portraits/women/1.jpg",
    },
    {
      "name": "Darrell Steward",
      "message": "Where did you get that from?",
      "image": "https://randomuser.me/api/portraits/men/2.jpg",
    },
    {
      "name": "Courtney Henry",
      "message": "Where did you get that from?",
      "image": "https://randomuser.me/api/portraits/women/3.jpg",
    },
    {
      "name": "Jacob Jones",
      "message": "Where did you get that from?",
      "image": "https://randomuser.me/api/portraits/men/4.jpg",
    },
    {
      "name": "Dianne Russell",
      "message": "Where did you get that from?",
      "image": "https://randomuser.me/api/portraits/women/5.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x000000),

      appBar: AppBar(
        title: const Text("Message", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {},
        ),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search.....",
                      hintStyle: TextStyle(color: Colors.white),
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.white,
                      ),
                      filled: true,
                      fillColor: Color(0x000000),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          //border: Border.all(color: Colors.white12),
                          color: Colors.white12,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 18),
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Color(0x000000),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.white12),
                  ),
                  child: const Icon(Icons.filter_list, color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Expanded(
              child: ListView.builder(
                itemCount: chats.length,
                itemBuilder: (context, index) {
                  final chat = chats[index];
                  return Card(
                    color: Color(0x000000),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(color: Colors.white12),
                    ),
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: ListTile(
                      contentPadding: EdgeInsets.all(12),
                      leading: CircleAvatar(
                        radius: 28,
                        backgroundImage: NetworkImage(chat["image"]!),
                      ),
                      title: Text(
                        chat["name"]!,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      subtitle: Text(
                        chat["message"]!,
                        style: TextStyle(color: Colors.grey),
                      ),
                      trailing: Container(
                        padding: EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                        child: Text(
                          "1",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: SizedBox(
        width: 70,height: 70,
        child: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add,size: 35,color: Colors.white,),
          backgroundColor: Colors.grey.shade800,
          shape: CircleBorder(),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey.shade800,
        //color: Colors.amberAccent,
        shape: CircularNotchedRectangle(

        ),
        notchMargin: 6,
        elevation: 10,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Icon(Icons.home, color: Colors.white,size: 30,),
              Icon(Icons.star, color: Colors.white,size: 30,),
              SizedBox(width: 48),
              Icon(Icons.chat_bubble, color: Colors.white,size: 30,),
              Icon(Icons.person, color: Colors.white,size: 30,),
            ],
          ),
        ),
      ),

    );
  }
}
