import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({Key? key,required this.hintText,this.maxLines=1,this.onSaved}) : super(key: key);
  final String hintText;
  final int maxLines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved:onSaved,
      validator:(value){
        if(value?.isEmpty ?? true){
          return 'Field Is Required';
        }else {
          return null;
        }
      },

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
