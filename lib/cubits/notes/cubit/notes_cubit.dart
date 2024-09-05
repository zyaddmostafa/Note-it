import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:note_it/constants.dart';
import 'package:note_it/models/notemodel.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchallnotes() {
    emit(Notesloading());
    try {
      var box = Hive.box<Notemodel>(kallnotebox);
      List<Notemodel> notes = box.values.toList();
      emit(NotesSuccess(notelist: notes));
    } catch (e) {
      emit(Notesfailur(errormessage: e.toString()));
    }
  }
}
