import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 10),
        child: Column(
          children:[
            CustomAppBar(appBarText: 'Notes',)
          ],
        ),
      ),
    );
  }
}