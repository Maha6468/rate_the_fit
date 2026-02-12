import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


import '../../coustom_widget/custom_RichText.dart';
import '../../coustom_widget/custom_elevated_button.dart';
import '../../coustom_widget/custom_star_image.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Sign_Up/Sign_up.dart';
import 'otp_varifications.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _Login_With_Mob_NumState();
}

class _Login_With_Mob_NumState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.black, Color(0xFF3B2F2F)],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight)),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Custom_Star_Image(
                      alignment: Alignment.topRight,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Login With \nMobile Number",
                      style: GoogleFonts.poppins(
                        color: Color(0xFFFFFFFF),
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Welcome Back Out App !!!",
                      style: GoogleFonts.poppins(
                        color: Color(0xFFB2B2B2),
                        fontSize: 14,
                        letterSpacing: 0.0,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 54,
                          width: 104,
                          decoration: BoxDecoration(
                              color: Color(0x090C0E),
                              borderRadius: BorderRadius.circular(12),
                              border: BoxBorder.all(
                                  width: 1,
                                  color: Color(0xFFFFFFFF).withOpacity(0.17))),
                          child: Row(
                            children: [
                              Expanded(
                                child: CountryCodePicker(
                                  initialSelection: 'US',
                                  showCountryOnly: false,
                                  alignLeft: false,
                                  textStyle:
                                  const TextStyle(color: Colors.white),
                                  dialogSize: Size(
                                    MediaQuery.of(context).size.width * 0.8,
                                    MediaQuery.of(context).size.height * 0.6,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Flexible(
                          child: Container(
                            height: 54,
                            width: 230,
                            decoration: BoxDecoration(
                                color: Color(0x090C0E),
                                borderRadius: BorderRadius.circular(10),
                                border: BoxBorder.all(
                                    width: 1,
                                    color:Color(0xFFFFFFFF).withOpacity(0.17))),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Mobile Number",
                                  // hintStyle: TextStyle(color: Colors.grey,fontSize: 14),
                                  hintStyle: GoogleFonts.poppins(
                                    // height: 21,
                                      color: Color(0xFFB2B2B2),
                                      fontSize: 14),
                                  filled: true,
                                  fillColor: Colors.black54,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide.none,
                                    //borderSide: BorderSide(width: 10, color: Color(0xFFFFFFFF).withOpacity(0.17),)
                                  )),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Center(
                        child: Custom_Elevated_Button(
                          text: 'LOGIN',
                          width: 294,
                          height: 68,
                          backgroundColor: Color(0xFF261C12),
                          onPressed: () {
                            Navigator.push(
                                context, MaterialPageRoute(
                                builder: (Context) => OTP_Varification()));
                          },
                        )),
                    SizedBox(height: 40),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 1.5,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.transparent,
                                  Colors.white12,
                                  Colors.white,
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Text("Or",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Expanded(
                          child: Container(
                            height: 1.5,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.transparent,
                                  Colors.white12,
                                  Colors.white,
                                ],
                                begin: Alignment.centerRight,
                                end: Alignment.centerLeft,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(color: Colors.grey.shade900),
                              foregroundColor: Colors.white,
                              padding: EdgeInsets.symmetric(vertical: 12),
                            ),
                            child: Row(
                              //mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  "assets/images/google.png",
                                  fit: BoxFit.cover,

                                ),
                                Flexible(
                                  child: Text(
                                    " Sign With Google",
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(color: Colors.grey.shade900),
                              foregroundColor: Colors.white,
                              padding: EdgeInsets.symmetric(vertical: 12),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.apple_outlined,
                                  size: 30,
                                ),
                                Flexible(
                                  child: Text(
                                    "Sign With Apple",
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 80,
                    ),


                    Center(
                        child: Text_Rich(
                          firstText: "Don't have an account? ",
                          lastText: ' Sign Up',
                          firstColor:Colors.grey,
                          lastColor: Colors.white,
                          onTap: () {
                            Navigator.push(
                                context, MaterialPageRoute(
                                builder: (Context) => Sign_Up()));
                          },

                        )
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}