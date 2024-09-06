part of 'addnote_cubit.dart';

@immutable
sealed class AddnoteState {}

final class AddnoteInitial extends AddnoteState {}

final class AddnoteSuccess extends AddnoteState {}

final class Addnoteloading extends AddnoteState {}

final class Addnotefaluir extends AddnoteState {
  final String errormessage;

  Addnotefaluir({required this.errormessage});
}
