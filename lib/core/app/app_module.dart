import 'package:flutter_modular/flutter_modular.dart';

import '../../features/home/home_module.dart';

class AppModule extends Module {
  static const homePath = '/home';

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(
          homePath,
          module: HomeModule(),
        ),
      ];
}
