import 'constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// the app's light theme
ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: appBarTheme,
    iconTheme: const IconThemeData(color: kContentColorLightTheme),
    textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: kContentColorLightTheme),
    colorScheme: const ColorScheme.light(
      primary: kPrimaryColor,
      secondary: kSecondaryColor,
      error: kErrorColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: kContentColorLightTheme.withOpacity(0.7),
      unselectedItemColor: kContentColorLightTheme.withOpacity(0.32),
      selectedIconTheme: const IconThemeData(color: kPrimaryColor),
      showUnselectedLabels: true,
    ),
    inputDecorationTheme: inputDecorationTheme.copyWith(
        fillColor: kPrimaryColor.withOpacity(0.05)),
  );
}

// the app's dark theme
ThemeData darkThemeData(BuildContext context) {
  // By default flutter provides us light and dark theme
  // we just modify it as we need
  return ThemeData.dark().copyWith(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: kContentColorLightTheme,
    appBarTheme: appBarTheme,
    iconTheme: const IconThemeData(color: kContentColorDarkTheme),
    textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: kContentColorDarkTheme),
    colorScheme: const ColorScheme.dark().copyWith(
      primary: kPrimaryColor,
      secondary: kSecondaryColor,
      error: kErrorColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: kContentColorLightTheme,
      selectedItemColor: Colors.white70,
      unselectedItemColor: kContentColorDarkTheme.withOpacity(0.32),
      selectedIconTheme: const IconThemeData(color: kPrimaryColor),
      showUnselectedLabels: true,
    ),
    inputDecorationTheme: inputDecorationTheme,
  );
}

const appBarTheme = AppBarTheme(centerTitle: false, elevation: 0);

final inputDecorationTheme = InputDecorationTheme(
  filled: true,
  fillColor: kContentColorDarkTheme.withOpacity(0.08),
  contentPadding: const EdgeInsets.symmetric(
      horizontal: kDefaultPadding * 1.5, vertical: kDefaultPadding),
  border: const OutlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.all(Radius.circular(50)),
  ),
);
