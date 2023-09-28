import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_app_bar.dart';
import 'package:notes/views/widgets/custom_text_feild.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.all(20.0),
      child: Column(
        children: [
          CustomAppBar(
            appBarText: 'Edit Note',
            icon: Icons.check,
          ),
           SizedBox(
            height: 20,
          ),
           CustomTextFiled(hintText: 'Title'),
           SizedBox(
            height: 10,
          ),
           CustomTextFiled(hintText: 'Content', maxLines: 5),
        ],
      ),
    );
  }
}
