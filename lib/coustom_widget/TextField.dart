import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Text_Field extends StatelessWidget {
  final String hintText;
  const Text_Field({super.key, required this.hintText});
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 55,
      child: TextField(
        style: TextStyle(color: Colors.grey),
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: GoogleFonts.poppins(color: Color(0xFFB2B2B2).withOpacity(0.17),fontSize: 15),
            filled: true,
            fillColor: Colors.black54,

            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color:Color(0xFFFFFFFF).withOpacity(0.17), width: .5), // normally color
              borderRadius: BorderRadius.circular(12),
            ),

            border: OutlineInputBorder(

              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            )

        ),
      ),
    );
  }
}