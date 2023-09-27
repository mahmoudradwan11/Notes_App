import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({Key? key,required this.hintText,this.maxLines=1}) : super(key: key);
  final String hintText;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor : const  Color(0xff62FCD7),
      decoration: InputDecoration(
        hintText:hintText,
        hintStyle:const TextStyle(
          color:Color(0xff62FCD7)
        ),
        border:buildBorder(),
        enabledBorder: buildBorder(color: Colors.white),
        focusedBorder: buildBorder(),
      ),
    );
  }
  OutlineInputBorder buildBorder({color})=> OutlineInputBorder(
  borderRadius: BorderRadius.circular(8),
  borderSide:  BorderSide(
  color: color?? const Color(0xff62FCD7)
  )
  );
}
