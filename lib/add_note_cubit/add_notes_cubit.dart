import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/add_note_cubit/notes_states.dart';
import 'package:notes/models/note_model.dart';

class AddNotesCubit extends Cubit<NotesStates> {
  AddNotesCubit() : super(AddNotesInitState());
  static AddNotesCubit get(context) => BlocProvider.of(context);
  addNote(NoteModel note) async {
    emit(AddNotesLoadingState());
    try{
      var noteBox =Hive.box('notes_box');
      await noteBox.add(note);
      emit(AddNoteState());
    }catch(e){
      emit(ErrorAddNotes(e.toString()));
    }
  }

}
