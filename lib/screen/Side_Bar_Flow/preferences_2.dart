import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Preferences_2 extends StatefulWidget {
  const Preferences_2({super.key});

  @override
  State<Preferences_2> createState() => _Preferences_2State();
}

class _Preferences_2State extends State<Preferences_2> {
  List<String> options = [
    "Casual",
    "Formal",
    "Streetwear",
    "Professional",
    "Cosy",
    "Casual",
    "Formal",
    "Streetwear",
    "Profession",
    "Cosy"
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
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Notifications",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
            //color: Colors.grey[900],
            borderRadius: BorderRadius.circular(16),
          ),
          child: Theme(
            data: Theme.of(context).copyWith(
              dividerColor: Colors.transparent,
            ),
            child: ExpansionTile(
              title: Text(
                "Content Preference",
                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
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
                      crossAxisCount: 2,
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
      ),
    );
  }
}
