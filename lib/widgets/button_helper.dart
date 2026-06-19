

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget{

const CustomButton({super.key, required this.callBack, required this.fontSize, required this.fontWeight, required this.title});

final String title;
final double fontSize;
final FontWeight fontWeight;
 final VoidCallback callBack;

@override
  Widget build(BuildContext context){
  return InkWell(
    onTap: callBack,
    child: Container(

      width: double.infinity,
      height: 50, 
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(12), 
      ), 
      child: Text(title, style: TextStyle(fontSize: fontSize, fontWeight: fontWeight ),),
    
    ),
  );
}

}



// Custom Text

class CustomText extends StatelessWidget{

const CustomText({super.key, required this.fontSize, required this.fontWeight, required this.title});

  final double fontSize;
  final String title;
  final FontWeight fontWeight;
  
  @override
  Widget build(BuildContext context) {
    return Text(title, style: TextStyle(
      fontWeight: fontWeight, fontSize: fontSize
    ),);
  }


  
}