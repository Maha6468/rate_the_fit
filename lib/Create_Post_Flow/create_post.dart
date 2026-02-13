import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import '../coustom_widget/custom_elevated_button.dart';

class Create_Post extends StatefulWidget {
  const Create_Post({super.key});

  @override
  State<Create_Post> createState() => _NewPostScreenState();
}

class _NewPostScreenState extends State<Create_Post> {
  File? selectedImage;
  final ImagePicker _picker=ImagePicker();
  Future<void> pickImage(ImageSource source) async {
    final XFile? image = await _picker.pickImage(
        source: source,
      imageQuality: 70,
      maxWidth: 1080,


    );

    if (image != null) {
      setState(() {
        selectedImage = File(image.path);
      });
    }
  }




  List<String> tags = [
    "Casual",
    "Professional",
    "Trendy",
    "Classis",
    "Sporty",
    "Black",
    "Red",
    "Green",
  ];

  List<String> selectedTags = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x000000),
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
                  Text(
                    "New Post",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 25),

              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    backgroundColor: Colors.black,
                    builder: (_) {
                      return SafeArea(
                        child: Wrap(
                          children: [
                            ListTile(
                              leading: const Icon(Icons.photo, color: Colors.white),
                              title: const Text("Gallery",
                                  style: TextStyle(color: Colors.white)),
                              onTap: () {
                                Navigator.pop(context);
                                pickImage(ImageSource.gallery);
                              },
                            ),
                            ListTile(
                              leading: const Icon(Icons.camera_alt, color: Colors.white),
                              title: const Text("Camera",
                                  style: TextStyle(color: Colors.white)),
                              onTap: () {
                                Navigator.pop(context);
                                pickImage(ImageSource.camera);
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  height: 140,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    gradient: const LinearGradient(
                      colors: [
                       // Color(0xff1a1a1a),
                       // Color(0xff2a2a2a)
                        Color(0xFF1C1914),
                        Color(0xFF090C0E),
                      ],
                    ),
                  ),
                  child: selectedImage == null
                      ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.upload_file, color: Colors.white, size: 28),
                      SizedBox(height: 8),
                      Text("Upload Photo",
                          style: TextStyle(color: Colors.white70))
                    ],
                  )
                      : ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.file(
                      selectedImage!,
                      fit: BoxFit.fill,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
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
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white12),
                        color: isSelected ? Colors.white12 : Colors.transparent,
                      ),
                      child: Text(
                        tag,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  );
                }).toList(),
              ),

              SizedBox(height: 30),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: Colors.white12),
                ),
                child: Row(
                  children: [
                    Icon(Icons.location_on_outlined, color: Colors.white70),
                    SizedBox(width: 8),
                    Text(
                      "Tag location",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              Spacer(),

              Custom_Elevated_Button(
                text: 'Post',
                width: 307,
                height: 64,
                onPressed: () {},
                backgroundColor: Color(0xFF261C12),
                circular_value: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
