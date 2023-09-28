import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key,required this.onPressed}) : super(key: key);
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onPressed,
      child: Container(
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xff62FCD7),
        ),
        width: MediaQuery.of(context).size.width,
        child:const Center(
          child:Text(
            'Add',
            style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}
