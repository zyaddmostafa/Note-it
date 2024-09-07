part of 'addtrashnote_cubit.dart';

@immutable
sealed class AddtrashnoteState {}

final class AddtrashnoteInitial extends AddtrashnoteState {}

final class Addtrashnoteloading extends AddtrashnoteState {}

final class AddtrashnoteSccuess extends AddtrashnoteState {}

final class Addtrashnotefailur extends AddtrashnoteState {
  final String errormessage;

  Addtrashnotefailur({required this.errormessage});
}
