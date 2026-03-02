import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../coustom_widget/TextField.dart';

class Account_Settings extends StatefulWidget {
  const Account_Settings({super.key});

  @override
  State<Account_Settings> createState() => _Account_SettingsState();
}

class _Account_SettingsState extends State<Account_Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.black,Color(0xFF3B2F2F)],
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
                  Text_Field(hintText: 'User Name',),
                  Text_Field(hintText: 'Email Address',),
                  Text_Field(hintText: 'Mobile Number',),
                  Text_Field(hintText: 'Mobile Number',),
                  Text_Field(hintText: 'Facebook Account Link',),
                  Text_Field(hintText: 'Instagram Account Link',),
                  Text_Field(hintText: 'TikTok Account Link',),


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
