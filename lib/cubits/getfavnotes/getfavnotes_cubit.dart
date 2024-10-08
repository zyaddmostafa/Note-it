import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:note_it/constants.dart';
import 'package:note_it/models/notemodel.dart';

part 'getfavnotes_state.dart';

class GetfavnotesCubit extends Cubit<GetfavnotesState> {
  GetfavnotesCubit() : super(GetfavnotesInitial());

  List<Notemodel>? favnotes;
  fetchfavnotes() {
    var box = Hive.box<Notemodel>(kfavebox);
    favnotes = box.values.toList();
    log(favnotes.toString());
    emit(GetfavnotesSccuess());
  }
}
