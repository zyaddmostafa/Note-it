part of 'fav_cubit.dart';

@immutable
sealed class FavState {}

final class FavInitial extends FavState {}

final class FavSuccess extends FavState {}

final class Favloading extends FavState {}

final class Favfailur extends FavState {
  final String errormessage;

  Favfailur({required this.errormessage});
}
