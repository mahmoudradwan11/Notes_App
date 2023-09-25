import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder:(context,index)=>const CustomNoteItem(),
      itemCount: 5,);
  }
}