import 'package:flutter/material.dart';

class NewPostScreen extends StatefulWidget {
  const NewPostScreen({super.key});

  @override
  State<NewPostScreen> createState() => _NewPostScreenState();
}

class _NewPostScreenState extends State<NewPostScreen> {

  List<String> tags = [
    "Casual","Professional","Trendy","Classis",
    "Sporty","Black","Red","Green"
  ];

  List<String> selectedTags = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Row(
                children: [
                   Icon(Icons.close, color: Colors.white),
                   SizedBox(width: 10),
                   Text("New Post", style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),

               SizedBox(height: 25),

              Container(
                height: 140,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  gradient: LinearGradient(
                    colors: [
                      //Color(0xff1a1a1a),
                      //Color(0xff2a2a2a)
                      Color(0xFF1C1914),
                      Color(0xFF090C0E),
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Icon(Icons.upload_file, color: Colors.white, size: 28),
                    SizedBox(height: 8),
                    Text("Upload Photo",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))
                  ],
                ),
              ),

              SizedBox(height: 20),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  //color: Color(0xff1e1e1e),
                  color: Color(0xFF1C1914),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  maxLines: 3,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "What Are you waring?",
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 25),

              Wrap(
                spacing: 10,
                runSpacing: 15,
                children: tags.map((tag) {
                  final isSelected = selectedTags.contains(tag);
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        isSelected
                            ? selectedTags.remove(tag)
                            : selectedTags.add(tag);
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 8, vertical: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white12),
                        color: isSelected
                            ? Colors.white12
                            : Colors.transparent,
                      ),
                      child: Text(tag,
                          style: const TextStyle(color: Colors.white)),
                    ),
                  );
                }).toList(),
              ),

              SizedBox(height: 30),

              Container(
                padding:EdgeInsets.symmetric(horizontal: 14, vertical: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: Colors.white12),
                ),
                child: Row(
                  children:[
                    Icon(Icons.location_on_outlined,
                        color: Colors.white70),
                    SizedBox(width: 8),
                    Text("Tag location",
                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))
                  ],
                ),
              ),

               Spacer(),

              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(
                    colors: [Color(0xff3a2414), Color(0xff2b1a0f)],
                  ),
                ),
                child: const Center(
                  child: Text("Post",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
