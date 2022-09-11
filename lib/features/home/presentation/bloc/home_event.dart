part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class GetAllFixturesEvent extends HomeEvent {
  final int leagueId, season;

  GetAllFixturesEvent({
    required this.leagueId,
    required this.season,
  });
}
