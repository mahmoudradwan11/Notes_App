abstract class NotesStates{}
class AddNotesInitState extends NotesStates{}
class AddNotesLoadingState extends NotesStates{}
class AddNoteState extends NotesStates{}
class ErrorAddNotes extends NotesStates
{
  final String error;
  ErrorAddNotes(this.error);
}