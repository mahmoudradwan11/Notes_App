import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/note_cubit/notes_cubit.dart';
import 'package:notes/cubits/note_cubit/notes_states.dart';
import 'package:notes/views/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetNotesCubit,GetNotesStates>(
      builder:(context,state){
        var cubit = GetNotesCubit.get(context);
        return
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) => CustomNoteItem(note: cubit.notes![index],),
          itemCount:cubit.notes != null?cubit.notes!.length:0
        ),
      );
        }
    );
  }
}
