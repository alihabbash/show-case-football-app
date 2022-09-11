import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:football/features/home/data/repository/home_repository.dart';
import 'package:football/features/home/domain/entity/fixtures_entity.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeEvent>((event, emit) {});

    on<GetAllFixturesEvent>(
      (event, emit) async {
        emit(AllFixturesLoading());
        final repo = Modular.get<HomeRepository>();
        final res = await repo.getAllFixtures(
          leagueId: event.leagueId,
          season: event.season,
        );

        res.fold(
          (l) => emit(AllFixturesError(l.errorMessage ?? '')),
          (r) => emit(AllFixturesLoaded(r)),
        );
      },
    );
  }
}
