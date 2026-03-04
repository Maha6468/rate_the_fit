import 'package:flutter/material.dart';

class Faq_Screen extends StatefulWidget {
  const Faq_Screen({super.key});

  @override
  State<Faq_Screen> createState() => _FaqScreenState();
}

class _FaqScreenState extends State<Faq_Screen> {
  int selectedIndex = 5;

  List<Map<String, String>> faqList = [
    {
      "question":
      "What is the best possible outcome to show the world about the brand Value?",
      "answer":
      "The man of action is really ready to take the best possible action from you and your end. This is why we are trying our best to solve."
    },
    {
      "question":
      "What is the best possible outcome to show the world about the brand Value?",
      "answer":
      "This is a sample answer for demonstration."
    },
    {
      "question":
      "What is the best possible outcome to show the world about the brand Value?",
      "answer":
      "This is a sample answer for demonstration."
    },
    {
      "question":
      "What is the best possible outcome to show the world about the brand Value?",
      "answer":
      "This is a sample answer for demonstration."
    },
    {
      "question":
      "What is the best possible outcome to show the world about the brand Value?",
      "answer":
      "This is a sample answer for demonstration."
    },
    {
      "question":
      "What is the best possible outcome to show the world about the brand Value?",
      "answer":
      "The man of action is really ready to take the best possible action from you and your end. This is why we are trying our best to solve."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Security Settings",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: faqList.length,
          itemBuilder: (context, index) {
            bool isSelected = selectedIndex == index;

            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex =
                  isSelected ? -1 : index;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: const EdgeInsets.only(bottom: 12),
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: const Color(0xFF1E1410),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      faqList[index]["question"]!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    if (isSelected) ...[
                      const SizedBox(height: 10),
                      Text(
                        faqList[index]["answer"]!,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                        ),
                      ),
                    ]
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}