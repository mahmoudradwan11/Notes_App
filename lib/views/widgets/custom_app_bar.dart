import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  final String appBarText;
  final IconData icon;
  final void Function()? onPressed;
  const CustomAppBar({Key? key, required this.appBarText, required this.icon,this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          appBarText,
          style: const TextStyle(
            fontSize: 28,
          ),
        ),
        const Spacer(),
        CustomSearchIcon(icon: icon,onPressed:onPressed,),
      ],
    );
  }
}
