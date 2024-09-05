part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class NotesSuccess extends NotesState {
  final List<Notemodel> notelist;

  NotesSuccess({required this.notelist});
}

final class Notesloading extends NotesState {}

final class Notesfailur extends NotesState {
  final String errormessage;

  Notesfailur({required this.errormessage});
}
