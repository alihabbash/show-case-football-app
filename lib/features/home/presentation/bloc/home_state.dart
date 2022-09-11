part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class AllFixturesLoaded extends HomeState {
  final FixturesEntity entity;

  AllFixturesLoaded(this.entity);
}

class AllFixturesLoading extends HomeState {}

class AllFixturesError extends HomeState {
  final String errorMessage;

  AllFixturesError(this.errorMessage);
}
