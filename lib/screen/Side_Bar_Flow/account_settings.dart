import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../coustom_widget/TextField.dart';
import '../../coustom_widget/custom_elevated_button.dart';

class Account_Settings extends StatefulWidget {
  const Account_Settings({super.key});

  @override
  State<Account_Settings> createState() => _Account_SettingsState();
}

class _Account_SettingsState extends State<Account_Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0D0702),
        elevation: 0,
        leading: const Icon(Icons.arrow_back, color: Colors.white),
        title: const Text(
          "Account Settings",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.black,Color(0xFF0D0702)

                ],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight
            )
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(child: Text_Field(hintText: 'First Name',)),
                      SizedBox(width: 20,),
                      Expanded(child: Text_Field(hintText: 'Last Name',))
                    ],
                  ),
                  SizedBox(height: 10,),
                  Text_Field(hintText: 'User Name',),
                  SizedBox(height: 10,),
                  Text_Field(hintText: 'Email Address',),
                  SizedBox(height: 10,),
                  Text_Field(hintText: 'Mobile Number',),
                  SizedBox(height: 10,),
                  Text_Field(hintText: 'Mobile Number',),
                  SizedBox(height: 10,),
                  Text_Field(hintText: 'Facebook Account Link',),
                  SizedBox(height: 10,),
                  Text_Field(hintText: 'Instagram Account Link',),
                  SizedBox(height: 10,),
                  Text_Field(hintText: 'TikTok Account Link',),
                  SizedBox(height: 25,),
                  Center(child: Custom_Elevated_Button(
                    text: 'Update Profile',
                    width: 340, height: 60,
                    backgroundColor: Color(0xFF261d00),

                    circular_value:10,
                    onPressed: () {

                    }, )),


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
