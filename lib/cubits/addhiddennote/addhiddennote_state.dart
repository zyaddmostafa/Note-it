part of 'addhiddennote_cubit.dart';

@immutable
sealed class AddhiddennoteState {}

final class AddhiddennoteInitial extends AddhiddennoteState {}

final class Addhiddennoteloading extends AddhiddennoteState {}

final class AddhiddennoteSuccess extends AddhiddennoteState {}

final class Addhiddennotefailur extends AddhiddennoteState {
  final String errormessage;

  Addhiddennotefailur({required this.errormessage});
}
