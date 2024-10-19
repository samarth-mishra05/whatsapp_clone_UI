import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class CustomWidgets{
  static CustomButton( {required VoidCallback callback, required String name})
  {
    return SizedBox(
      height: 45,
      width: 350,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40)
            )
        ),
          onPressed: (){
            callback();
            },
          child: Text(name,style: TextStyle(fontWeight:FontWeight.bold,fontSize: 19,color: Colors.white),)
      ),
    );
  }

  static CustomText({
    required String text,
    required double height,
    Color? color,
    FontWeight? fontweight,
  })
  {
    return Text(
        text,
        style: TextStyle(
            fontSize: height,
            color: color??Colors.black,
          fontWeight: fontweight,
        ),
    );
  }

  static CustomContainer(TextEditingController contoller){
    return Container(
      height: 55,
      width: 55,
      decoration: BoxDecoration(
          color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Center(
        child: TextField(
          textAlign: TextAlign.center,
          cursorHeight: 25,
          keyboardType: TextInputType.number,
          controller: contoller,
          style: TextStyle(fontSize: 30),
          decoration: InputDecoration(
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }

}