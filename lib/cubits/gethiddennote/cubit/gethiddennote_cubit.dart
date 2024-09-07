import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:note_it/constants.dart';
import 'package:note_it/models/notemodel.dart';

part 'gethiddennote_state.dart';

class GethiddennoteCubit extends Cubit<GethiddennoteState> {
  GethiddennoteCubit() : super(GethiddennoteInitial());

  List<Notemodel>? favnotes;
  fetchtrashnotes() {
    var box = Hive.box<Notemodel>(khiddenbox);
    favnotes = box.values.toList();
    log(favnotes.toString());
    emit(GethiddennoteSuccess());
  }
}
