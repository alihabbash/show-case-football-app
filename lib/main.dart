import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:football/core/app/app_module.dart';

import 'core/app/app.dart';

void main() {
  runApp(ModularApp(module: AppModule(), child: const App()));
}
