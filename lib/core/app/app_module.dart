import 'package:flutter_modular/flutter_modular.dart';
import 'package:football/core/api/dio_wrapper.dart';
import 'package:football/core/api/rest_client.dart';

import '../../features/home/home_module.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.singleton((i) => DioWrapper()),
        Bind.singleton((i) => RestClient(i<DioWrapper>().dioClient)),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(
          Modular.initialRoute,
          module: HomeModule(),
        ),
      ];
}
