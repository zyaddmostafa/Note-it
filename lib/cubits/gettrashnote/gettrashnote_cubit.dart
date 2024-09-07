import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:note_it/constants.dart';
import 'package:note_it/models/notemodel.dart';

part 'gettrashnote_state.dart';

class GettrashnoteCubit extends Cubit<GettrashnoteState> {
  GettrashnoteCubit() : super(GettrashnoteInitial());

  List<Notemodel>? favnotes;
  fetchfavnotes() {
    var box = Hive.box<Notemodel>(ktrashbox);
    favnotes = box.values.toList();
    log(favnotes.toString());
    emit(GettrashnoteSccuess());
  }
}
