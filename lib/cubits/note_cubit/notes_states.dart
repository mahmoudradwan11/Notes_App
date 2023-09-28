import 'package:notes/models/note_model.dart';

abstract class GetNotesStates{}
class GetNotesInitState extends GetNotesStates{}
class GetNotesLoadingState extends GetNotesStates{}
class GetNoteState extends GetNotesStates{
  final List<NoteModel> notes;
  GetNoteState(this.notes);
}
class ErrorGetNotes extends GetNotesStates
{
  final String error;
  ErrorGetNotes(this.error);
}