import 'package:flutter/material.dart';
import 'package:notes/cubits/note_cubit/notes_cubit.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/views/widgets/custom_app_bar.dart';
import 'package:notes/views/widgets/custom_text_feild.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({Key? key,required this.note}) : super(key: key);
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
           CustomAppBar(
            appBarText: 'Edit Note',
            icon: Icons.check,
            onPressed:(){
             widget.note.title = title ?? widget.note.title;
             widget.note.subTitle = subTitle ?? widget.note.subTitle;
             widget.note.save().then((value){
               GetNotesCubit.get(context).fetchAllNote();
               Navigator.pop(context);
             });

            },
          ),
           const SizedBox(
            height: 20,
          ),
           CustomTextFiled(hintText:widget.note.title,onChanged:(value){
             title = value;
           }),
           const SizedBox(
            height: 10,
          ),
           CustomTextFiled(hintText:widget.note.subTitle, maxLines: 5,onChanged:(value){
             subTitle = value;
           }),
        ],
      ),
    );
  }
}
