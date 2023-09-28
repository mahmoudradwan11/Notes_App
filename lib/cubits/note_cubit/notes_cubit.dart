import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/models/note_model.dart';
import 'notes_states.dart';
class GetNotesCubit extends Cubit<GetNotesStates> {
  GetNotesCubit() : super(GetNotesInitState());

  static GetNotesCubit get(context) => BlocProvider.of(context);
  List<NoteModel>?notes;
  fetchAllNote() async {
    var noteBox = Hive.box<NoteModel>('notes_box');
    notes = noteBox.values.toList();
    emit(GetNoteState(notes!));
    print(notes!.length);
  }
}