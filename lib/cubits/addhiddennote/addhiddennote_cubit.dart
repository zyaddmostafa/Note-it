import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:note_it/constants.dart';
import 'package:note_it/models/notemodel.dart';

part 'addhiddennote_state.dart';

class AddhiddennoteCubit extends Cubit<AddhiddennoteState> {
  AddhiddennoteCubit() : super(AddhiddennoteInitial());

  addhiddennote(Notemodel hiddennote) async {
    emit(Addhiddennoteloading());
    try {
      var box = Hive.box<Notemodel>(khiddenbox);
      await box.add(hiddennote);
      log(box.values.toList().toString());
      emit(AddhiddennoteSuccess());
    } catch (e) {
      emit(Addhiddennotefailur(errormessage: e.toString()));
    }
  }
}
