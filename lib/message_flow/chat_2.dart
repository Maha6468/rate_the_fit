import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chat_2 extends StatelessWidget {
  const Chat_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(Icons.arrow_back, color: Colors.white),
        title: Text(
          "duncan",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Activity (3)",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(width: 30),
                Text(
                  "Message (5)",
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          FilterSection(),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Last 7 Days",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10),
          Expanded(child: ActivityList()),
        ],
      ),


      floatingActionButton: SizedBox(
        width: 70,
        height: 70,
        child: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add, size: 35, color: Colors.white),
          backgroundColor: Colors.grey.shade800,
          shape: CircleBorder(),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey.shade800,
        //color: Colors.amberAccent,
        shape: CircularNotchedRectangle(),
        notchMargin: 6,
        elevation: 10,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Icon(Icons.home, color: Colors.white, size: 30),
              Icon(Icons.star, color: Colors.white, size: 30),
              SizedBox(width: 48),
              Icon(Icons.chat_bubble, color: Colors.white, size: 30),
              Icon(Icons.person, color: Colors.white, size: 30),
            ],
          ),
        ),
      ),
    );
  }
}

Widget FilterSection() {
  List<String> filters = ["All", "Activity", "Follows", "Likes", "Comments"];
  return SizedBox(
    height: 40,
    child: ListView.separated(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.white24),
          ),
          child: Text(
            filters[index],
            style: const TextStyle(color: Colors.white),
          ),
        );
      },
      separatorBuilder: (_, __) => SizedBox(width: 10),
      itemCount: filters.length,
    ),
  );
}

class ActivityList extends StatelessWidget {
  const ActivityList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 10),
      children: [
        NotificationItem(
          image: "assets/user1.jpg",
          username: "duncan",
          action: "liked your post",
          time: "2h",
        ),

        CommentItem(
          image: "assets/user2.jpg",
          username: "duncan",
          comment: "I have this First",
          time: "2h",
        ),

        NotificationItem(
          image: "assets/user3.jpg",
          username: "duncan",
          action: "and 14 Other liked your post",
          time: "2h",
        ),
      ],
    );
  }
}

//
// class ActivityTile extends StatelessWidget {
//   final String image;
//   final String text;
//   final String time;
//
//   const ActivityTile({
//     super.key,
//     required this.image,
//     required this.text,
//     required this.time,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       leading: CircleAvatar(backgroundImage: AssetImage(image)),
//       title: Text(text, style: const TextStyle(color: Colors.white)),
//       trailing: Text(time, style: const TextStyle(color: Colors.grey,)),
//     );
//   }
// }

class CommentTile extends StatelessWidget {
  const CommentTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 72, right: 16, bottom: 15),
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            colors: [Colors.grey.shade900, Colors.grey.shade800],
          ),
        ),
        child: Text(
          "I have this First",
          style: TextStyle(color: Colors.white70),
        ),
      ),
    );
  }
}

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.black,
      shape: const CircularNotchedRectangle(),
      notchMargin: 10,
      child: SizedBox(
        height: 65,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Icon(Icons.home, color: Colors.white),
            Icon(Icons.star_border, color: Colors.white),
            SizedBox(width: 40),
            Icon(Icons.chat_bubble_outline, color: Colors.white),
            Icon(Icons.person_outline, color: Colors.white),
          ],
        ),
      ),
    );
  }
}

class NotificationItem extends StatelessWidget {
  final String image;
  final String username;
  final String action;
  final String time;

  const NotificationItem({
    super.key,
    required this.image,
    required this.username,
    required this.action,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(radius: 22, backgroundImage: AssetImage(image)),

          const SizedBox(width: 12),

          /// Text Section
          Expanded(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: username,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  const TextSpan(text: " "),
                  TextSpan(
                    text: action,
                    style: const TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                  const TextSpan(text: "   "),
                  TextSpan(
                    text: "• $time",
                    style: const TextStyle(color: Colors.red, fontSize: 13),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CommentItem extends StatelessWidget {
  final String image;
  final String username;
  final String comment;
  final String time;

  const CommentItem({
    super.key,
    required this.image,
    required this.username,
    required this.comment,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Top Row
          Row(
            children: [
              CircleAvatar(radius: 22, backgroundImage: AssetImage(image)),
              const SizedBox(width: 12),

              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: username,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    const TextSpan(text: " "),
                    const TextSpan(
                      text: "Comments",
                      style: TextStyle(color: Colors.white70, fontSize: 14),
                    ),
                    const TextSpan(text: "   "),
                    TextSpan(
                      text: "• $time",
                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.only(left: 56),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                gradient: const LinearGradient(
                  colors: [Color(0xff1c1c1e), Color(0xff2c2c2e)],
                ),
              ),
              child: Text(
                comment,
                style: const TextStyle(color: Colors.white70, fontSize: 13),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
