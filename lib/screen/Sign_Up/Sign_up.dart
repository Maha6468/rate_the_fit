import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../coustom_widget/TextField.dart';
import '../../coustom_widget/custom_RichText.dart';
import '../../coustom_widget/custom_elevated_button.dart';
import '../../coustom_widget/custom_star_image.dart';
import '../log_In/Login.dart';
import '../log_In/otp_varifications.dart';


class Sign_Up extends StatelessWidget {
  const Sign_Up({super.key});

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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Custom_Star_Image(alignment: Alignment.topRight,),
                  SizedBox(height: 20,),
                  Text("Create an account",
                    style: GoogleFonts.poppins(color: Color(0xFFFFFFFF),fontSize: 24,fontWeight:FontWeight.w400,),

                  ),
                  Text("Please enter below details and enjoy our amazing app",style: TextStyle(color: Colors.grey,letterSpacing: -.009),),
                  SizedBox(height: 25,),
                  Row(
                    children: [
                      Expanded(child: Text_Field(hintText: 'First Name',)),
                      SizedBox(width: 20,),
                      Expanded(child: Text_Field(hintText: 'Last Name',))
                    ],
                  ),
                  SizedBox(height: 16,),
                  Text_Field(hintText: 'User Name',),
                  SizedBox(height: 16),
                  Text_Field(hintText: 'Email Address',),
                  SizedBox(height: 16),
                  Text_Field(hintText: 'Mobile Number',),
                  SizedBox(height: 16),
                  Center(child: Custom_Elevated_Button(
                    text: 'Sign Up',
                    width: 300, height: 60,
                    backgroundColor: Color(0xFF261C12),
                    circular_value:10,
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (Context)=>OTP_Varification()));
                    }, )),
                  SizedBox(height: 30),
                  Row(
                    children:[
                      Custom_Or_Left(),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text("Or",
                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                      ),
                      Custom_Or_Right(),
                    ],
                  ),
                  SizedBox(height: 35,),
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
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset("assets/images/google.png",fit:BoxFit.cover),
                              SizedBox(width: 7,),
                              Flexible(
                                child: Text(
                                  "Sign With Google",
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
                              Icon(Icons.apple_outlined,size: 30,),
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

                  SizedBox(height: 30,),
                  Center(
                    child: Text_Rich(
                        firstText: "Already have an account? ",
                        lastText: "Sign in",
                        firstColor: Colors.grey,
                        lastColor: Colors.white,
                        onTap: (){
                          Navigator.push(
                              context, MaterialPageRoute(
                              builder: (Context) =>Login()));
                        }
                    ),
                  ),


                ],
              ),
            ),
          ),
        ),

      ),

    );
  }
}

class Custom_Or_Left extends StatelessWidget {
  const Custom_Or_Left({super.key});
  @override
  Widget build(BuildContext context) {
    return  Expanded(
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
    );
  }
}

class Custom_Or_Right extends StatelessWidget {
  const Custom_Or_Right({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
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
    );
  }
}

// class Row_TextField extends StatelessWidget {
//   final String hintText;
//   const Row_TextField({super.key, required this.hintText});
//   @override
//   Widget build(BuildContext context) {
//     return  SizedBox(
//       height: 55,
//       child: TextField(
//         style: TextStyle(color: Colors.grey),
//         decoration: InputDecoration(
//             hintText: hintText,
//             hintStyle: GoogleFonts.poppins(color: Color(0xFFB2B2B2).withOpacity(0.17),fontSize: 15),
//             filled: true,
//             fillColor: Colors.black54,
//
//             enabledBorder: OutlineInputBorder(
//               borderSide: BorderSide(
//                   color:Color(0xFFFFFFFF).withOpacity(0.17), width: .5), // normally color
//               borderRadius: BorderRadius.circular(12),
//             ),
//
//             border: OutlineInputBorder(
//
//                 borderRadius: BorderRadius.circular(8),
//                 borderSide: BorderSide.none,
//             )
//
//         ),
//       ),
//     );
//   }
// }