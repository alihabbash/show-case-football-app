import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:football/core/app/app.dart';
import 'package:football/core/app/app_module.dart';
import 'package:football/core/utils/consts.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setUp(() {
    // Get the font from assets instead of network
    GoogleFonts.config.allowRuntimeFetching = false;
  });

  testWidgets('test loading main screen successfully', (tester) async {
    await tester.pumpWidget(
      ModularApp(module: AppModule(), child: const App()),
    );
    expect(find.text(Consts.appName), findsOneWidget);
    expect(find.text('Upcoming games'), findsOneWidget);
    expect(find.text('Finished games'), findsOneWidget);
  });
}
