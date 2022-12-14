import 'package:flutter_modular/flutter_modular.dart';
import 'package:football/core/app/app_module.dart';
import 'package:football/features/home/data/repository/home_repository.dart';
import 'package:football/features/home/presentation/bloc/home_bloc.dart';
import 'package:football/features/home/presentation/screen/home_screen.dart';

class HomeModule extends Module {
  static const matchDetailsPath = '/matchDetails';

  @override
  List<Bind<Object>> get binds => [
        Bind.singleton((i) => HomeRepository(i())),
        Bind.singleton((i) => HomeBloc()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (context, args) => const HomeScreen(),
        ),
      ];
}
