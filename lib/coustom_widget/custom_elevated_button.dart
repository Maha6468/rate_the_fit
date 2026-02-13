import 'package:flutter/material.dart';

class Custom_Elevated_Button extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final Color backgroundColor;
  final VoidCallback onPressed;
  final double circular_value;
  const Custom_Elevated_Button({super.key, required this.text, required this.width, required this.height, required this.onPressed, required this.backgroundColor, required this.circular_value});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:width,height:height,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            // backgroundColor: Colors.brown[900],
            //backgroundColor: Color(0xFF261C12),
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(circular_value))

          ),
          onPressed:onPressed, child:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text,style: TextStyle(color: Colors.white,fontSize: 16,),),
          SizedBox(width: 10,),
         // Icon(Icons.arrow_right, color: Colors.white,)
        ],
      )
      ),
    );
  }
}