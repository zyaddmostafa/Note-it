import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:note_it/constants.dart';
import 'package:note_it/models/notemodel.dart';

part 'addnote_state.dart';

class AddnoteCubit extends Cubit<AddnoteState> {
  AddnoteCubit() : super(AddnoteInitial());

  addnote(Notemodel note) async {
    emit(Addnoteloading());
    try {
      var box = Hive.box<Notemodel>(kallnotebox);
      await box.add(note);
      emit(AddnoteSuccess());
    } catch (e) {
      emit(Addnotefaluir(errormessage: e.toString()));
    }
  }
}
