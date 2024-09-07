import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:meta/meta.dart';
import 'package:note_it/constants.dart';
import 'package:note_it/models/notemodel.dart';

part 'addtrashnote_state.dart';

class AddtrashnoteCubit extends Cubit<AddtrashnoteState> {
  AddtrashnoteCubit() : super(AddtrashnoteInitial());

  addtrashnote(Notemodel note) async {
    emit(Addtrashnoteloading());
    try {
      var box = Hive.box<Notemodel>(ktrashbox);
      await box.add(note);
      log(box.values.toList().toString());
      emit(AddtrashnoteSccuess());
    } catch (e) {
      emit(Addtrashnotefailur(errormessage: e.toString()));
    }
  }
}
