import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_botton.dart';
import 'package:notes/views/widgets/custom_text_feild.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.only(top: 20,left: 10,right: 10,bottom: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
          CustomTextFiled(hintText: 'Title'),
          SizedBox(height: 20,),
          CustomTextFiled(hintText: 'Content',maxLines: 5,),
            SizedBox(height: 50,),
          CustomButton(),
          ],
        ),
      ),
    );
  }

}