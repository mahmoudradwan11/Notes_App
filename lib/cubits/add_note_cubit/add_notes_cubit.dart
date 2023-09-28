import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/models/note_model.dart';

import 'add_notes_states.dart';

class AddNotesCubit extends Cubit<NotesStates> {
  AddNotesCubit() : super(AddNotesInitState());
  static AddNotesCubit get(context) => BlocProvider.of(context);
  Color color = const Color(0xff8499b1);
  addNote(NoteModel note) async {
    note.color = color.value;
    emit(AddNotesLoadingState());
    try{
      var noteBox =Hive.box<NoteModel>('notes_box');
      await noteBox.add(note);
      emit(AddNoteState());
    }catch(e){
      emit(ErrorAddNotes(e.toString()));
    }
  }

}
