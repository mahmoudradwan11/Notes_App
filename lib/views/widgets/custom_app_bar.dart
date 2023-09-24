import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  String appBarText;
  CustomAppBar({Key? key,required this.appBarText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(appBarText,style:const TextStyle(fontSize: 28,),),
        Spacer(),
        CustomSearchIcon(),
    ],
    );
  }
}
