import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Preferences_2 extends StatefulWidget {
  const Preferences_2({super.key});

  @override
  State<Preferences_2> createState() => _Preferences_2State();
}

class _Preferences_2State extends State<Preferences_2> {
  // bool _casual = false;
  // bool _formal = false;
  // bool _streetwear = false;
  // bool _professional = false;
  // bool _cosy = false;


  List<String> options = [
    "Casual",
    "Formal",
    "Streetwear",
    "Professional",
    "Cosy",
  ];

  Map<String, bool> selectedOptions = {};

  @override
  void initState() {
    super.initState();
    for (var option in options) {
      selectedOptions[option] = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Preferences"),
        leading: Icon(Icons.arrow_back),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: BorderRadius.circular(16),
          ),
          child: ExpansionTile(
            title: Text(
              "Content Preference",
              style: TextStyle(color: Colors.white),
            ),
            iconColor: Colors.white,
            collapsedIconColor: Colors.white,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: options.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // ২ কলাম
                    childAspectRatio: 4,
                  ),
                  itemBuilder: (context, index) {
                    String option = options[index];
                    return Row(
                      children: [
                        Checkbox(
                          value: selectedOptions[option],
                          onChanged: (value) {
                            setState(() {
                              selectedOptions[option] = value!;
                            });
                          },
                          checkColor: Colors.black,
                          activeColor: Colors.white,
                        ),
                        Text(
                          option,
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),



    );
  }
}
