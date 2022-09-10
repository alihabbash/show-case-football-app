import 'package:flutter_modular/flutter_modular.dart';
import 'package:football/core/app/app_module.dart';
import 'package:football/features/home/home_screen.dart';

class HomeModule extends Module {
  static const matchDetailsPath = '/matchDetails';

  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (context, args) => const HomeScreen(),
        ),
      ];
}
