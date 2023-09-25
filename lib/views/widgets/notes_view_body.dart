import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_app_bar.dart';
import 'package:notes/views/widgets/custom_note_item.dart';
import 'package:notes/views/widgets/custom_notes_ListView.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24,),
        child: Column(
          children:[
            Padding(
              padding: const EdgeInsets.only(top: 40,left: 10,right: 10),
              child: CustomAppBar(appBarText: 'Notes',),
            ),
            const NotesListView(),
          ],
        ),
      ),
    );
  }
}
