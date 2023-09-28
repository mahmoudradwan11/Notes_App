import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/add_note_cubit/add_notes_cubit.dart';
import 'package:notes/add_note_cubit/notes_states.dart';
import 'package:notes/views/widgets/add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<AddNotesCubit,NotesStates>(
      listener:(context,state){
        if(state is ErrorAddNotes){
          print(state.error);
        }
        if(state is AddNoteState){
          Navigator.pop(context);
        }
      },
      builder:(context,state){
        return AbsorbPointer(
          absorbing: state is AddNotesLoadingState?true:false,
          child:  Padding(
            padding:   EdgeInsets.only(top: 20,left: 10,right: 10,bottom: MediaQuery.of(context).viewInsets.bottom),
            child:  const SingleChildScrollView(child:  AddNoteForm()),
          ),
        );
      },
    );
  }
}

