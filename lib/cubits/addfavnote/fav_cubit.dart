import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_it/constants.dart';
import 'package:note_it/models/notemodel.dart';

part 'fav_state.dart';

class AddFavNoteCubit extends Cubit<FavState> {
  AddFavNoteCubit() : super(FavInitial());

  addfavnote(Notemodel favnote) async {
    emit(Favloading());
    try {
      var box = Hive.box<Notemodel>(kfavebox);
      await box.add(favnote);
      log(box.values.toList().toString());
      emit(FavSuccess());
    } catch (e) {
      emit(Favfailur(errormessage: e.toString()));
    }
  }
}
