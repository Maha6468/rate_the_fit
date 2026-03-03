import 'package:flutter/material.dart';

class Security_Settings extends StatefulWidget {
  const Security_Settings({super.key});

  @override
  State<Security_Settings> createState() => _SecuritySettingsPageState();
}

class _SecuritySettingsPageState extends State<Security_Settings> {
  bool is2FAEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F0703),
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

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "2FA For Sign In",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),
                  Transform.scale(
                    scale: 1.2,
                    child: Switch(
                      value: is2FAEnabled,
                      activeColor: Colors.white,
                      activeTrackColor: Colors.orange,
                      onChanged: (value) {
                        setState(() {
                          is2FAEnabled = value;
                        });
                      },
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 25),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF1A110C),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Theme(
                  data: Theme.of(context).copyWith(
                    dividerColor: Colors.transparent,
                  ),
                  child: ExpansionTile(
                    tilePadding: const EdgeInsets.symmetric(horizontal: 16),
                    childrenPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    collapsedIconColor: Colors.white,
                    iconColor: Colors.white,
                    title: Text(
                      "Recent Log In Activity",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    children: [
                      activityItem(),
                      SizedBox(height: 10),
                      activityItem(),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25),
              // Container(
              //   padding:
              //   const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
              //   decoration: BoxDecoration(
              //     color: const Color(0xFF1A110C),
              //     borderRadius: BorderRadius.circular(16),
              //   ),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: const [
              //       Text(
              //         "Change Password",
              //         style: TextStyle(color: Colors.white),
              //       ),
              //       Icon(Icons.arrow_forward_ios,
              //           size: 16, color: Colors.white),
              //     ],
              //   ),
              // ),

              const Spacer(),

              // SizedBox(
              //   width: double.infinity,
              //   child: ElevatedButton(
              //     style: ElevatedButton.styleFrom(
              //       backgroundColor: Colors.red,
              //       padding: const EdgeInsets.symmetric(vertical: 16),
              //       shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(14),
              //       ),
              //     ),
              //     onPressed: () {},
              //     child: const Text(
              //       "Delete Your Account",
              //       style: TextStyle(
              //         color: Colors.white,
              //         fontWeight: FontWeight.w600,
              //       ),
              //     ),
              //   ),
              // ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  /// 🔹 Activity Widget
  Widget activityItem() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "23rd March, 2024",
          style: TextStyle(color: Colors.white54, fontSize: 13),
        ),
        SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Dhaka, Bangladesh",
              style: TextStyle(color: Colors.white),
            ),
            Text(
              "IP: 012.123.456.789",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}