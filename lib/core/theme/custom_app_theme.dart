import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

abstract class CustomAppTheme {
  static ThemeData lightTheme() => ThemeData.light().copyWith(
        primaryColor: AppColors.primary,
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.lightPageBackground,
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
          toolbarTextStyle: textTheme().bodyText2,
          titleTextStyle: textTheme().headline6,
        ),
        backgroundColor: AppColors.lightPageBackground,
        scaffoldBackgroundColor: AppColors.lightPageBackground,
        iconTheme: const IconThemeData(color: Colors.black),
        textTheme: textTheme(),
        colorScheme: ColorScheme.light(
          primary: AppColors.primary,
          secondary: AppColors.accent,
        ).copyWith(secondary: AppColors.accent),
      );

  static TextTheme textTheme({BuildContext? context}) {
    return TextTheme(
        headline1: headlineStyle(context: context, fontSize: 20),
        headline2: accentHeadlineTextStyle(),
        headline3: headlineStyle(context: context, fontSize: 18),
        headline4: headlineStyle(context: context, fontSize: 16),
        headline5: headlineStyle(context: context, fontSize: 14),
        headline6: headlineStyle(context: context, fontSize: 12),
        bodyText1: bodyTextStyle(context: context),
        bodyText2: accentBodyTextStyle(),
        subtitle1: subtitleTextStyle(context: context),
        subtitle2: subtitleTextStyle(context: context),
        button: bodyTextStyle(context: context),
        caption: bodyTextStyle(context: context),
        overline: subtitleTextStyle(context: context));
  }

  static TextStyle accentHeadlineTextStyle() {
    return GoogleFonts.sourceSansPro().copyWith(
      color: AppColors.accent,
      height: 1,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle accentBodyTextStyle() {
    return GoogleFonts.sourceSansPro().copyWith(
      color: AppColors.accent,
      height: 1,
      fontWeight: FontWeight.bold,
      fontSize: 16,
    );
  }

  static TextStyle headlineStyle({
    BuildContext? context,
    required double fontSize,
  }) {
    return GoogleFonts.sourceSansPro().copyWith(
      color: AppColors.lightTextColor,
      height: 1,
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle bodyTextStyle({BuildContext? context}) {
    return GoogleFonts.sourceSansPro().copyWith(
      color: AppColors.lightTextColor,
      height: 1,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle subtitleTextStyle({BuildContext? context}) {
    return GoogleFonts.sourceSansPro().copyWith(
      color: AppColors.lightSubtitleColor,
      height: 1,
      fontSize: 14,
    );
  }
}
