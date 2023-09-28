import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/note_cubit/notes_cubit.dart';
import 'package:notes/views/widgets/add_note_bottom_sheet.dart';
import 'package:notes/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget{
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create:(context)=>GetNotesCubit(),
      child: Scaffold(
        body: const NotesViewBody(),
        floatingActionButton: FloatingActionButton(
          onPressed:(){
          showModalBottomSheet(
            isScrollControlled: true,
              context: context,
              builder:(context)=>const AddNoteBottomSheet(),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            )
          );
        },child: const Icon(Icons.add),
        ),
      ),
    );
  }
}



