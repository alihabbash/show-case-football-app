import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:football/app_module.dart';

import 'app.dart';

void main() {
  runApp(ModularApp(module: AppModule(), child: const App()));
}
