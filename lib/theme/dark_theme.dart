import 'package:flutter/material.dart';

ThemeData darkTheme(BuildContext context) {
  return ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Color.fromRGBO(187, 134, 252, 1.0),
      brightness: Brightness.dark,
      primary: Color.fromRGBO(187, 134, 252, 1.0),
      onPrimary: Color.fromRGBO(0, 0, 0, 1.0),
      secondary: Color.fromRGBO(3, 218, 198, 1.0),
      onSecondary: Color.fromRGBO(0, 0, 0, 1.0),
      error: Color.fromRGBO(207, 102, 121, 1.0),
      onError: Color.fromRGBO(0, 0, 0, 1.0),
      background: Color.fromRGBO(18, 18, 18, 1.0),
      onBackground: Color.fromRGBO(255, 255, 255, 1.0),
      surface: Color.fromRGBO(18, 18, 18, 1.0),
      onSurface: Color.fromRGBO(255, 255, 255, 1.0),
    ),
    brightness: Brightness.dark,
    primaryColor: Color.fromRGBO(18, 18, 18, 1.0),
    canvasColor: Color.fromRGBO(18, 18, 18, 1.0),
    scaffoldBackgroundColor: Color.fromRGBO(18, 18, 18, 1.0),
    bottomAppBarColor: Color.fromRGBO(18, 18, 18, 1.0),
    cardColor: Color.fromRGBO(18, 18, 18, 1.0),
    dividerColor: Color.fromRGBO(255, 255, 255, 1.0).withOpacity(0.12),
    backgroundColor: Color.fromRGBO(18, 18, 18, 1.0),
    dialogBackgroundColor: Color.fromRGBO(18, 18, 18, 1.0),
    indicatorColor: Color.fromRGBO(255, 255, 255, 1.0),
    errorColor: Color.fromRGBO(207, 102, 121, 1.0),
    textTheme: TextTheme(
      displayLarge: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 57.0,
        color: Theme.of(context).colorScheme.onSurface,
        letterSpacing: -0.25,
        textBaseline: TextBaseline.alphabetic,
        height: 1.12,
        inherit: false,
        leadingDistribution: TextLeadingDistribution.even,
      ),
      displayMedium: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 45.0,
        color: Theme.of(context).colorScheme.onSurface,
        letterSpacing: 0.0,
        textBaseline: TextBaseline.alphabetic,
        height: 1.16,
        inherit: false,
        leadingDistribution: TextLeadingDistribution.even,
      ),
      displaySmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 36.0,
        color: Theme.of(context).colorScheme.onSurface,
        letterSpacing: 0.0,
        textBaseline: TextBaseline.alphabetic,
        height: 1.22,
        inherit: false,
        leadingDistribution: TextLeadingDistribution.even,
      ),
      headlineLarge: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 32.0,
        color: Theme.of(context).colorScheme.onSurface,
        letterSpacing: 0.0,
        textBaseline: TextBaseline.alphabetic,
        height: 1.25,
        inherit: false,
        leadingDistribution: TextLeadingDistribution.even,
      ),
      headlineMedium: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 28.0,
        color: Theme.of(context).colorScheme.onSurface,
        letterSpacing: 0.0,
        textBaseline: TextBaseline.alphabetic,
        height: 1.29,
        inherit: false,
        leadingDistribution: TextLeadingDistribution.even,
      ),
      headlineSmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 24.0,
        color: Theme.of(context).colorScheme.onSurface,
        letterSpacing: 0.0,
        textBaseline: TextBaseline.alphabetic,
        height: 1.33,
        inherit: false,
        leadingDistribution: TextLeadingDistribution.even,
      ),
      titleLarge: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 22.0,
        color: Theme.of(context).colorScheme.onSurface,
        letterSpacing: 0.0,
        textBaseline: TextBaseline.alphabetic,
        height: 1.27,
        inherit: false,
        leadingDistribution: TextLeadingDistribution.even,
      ),
      titleMedium: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
        color: Theme.of(context).colorScheme.onSurface,
        letterSpacing: 0.15,
        textBaseline: TextBaseline.alphabetic,
        height: 1.5,
        inherit: false,
        leadingDistribution: TextLeadingDistribution.even,
      ),
      titleSmall: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
        color: Theme.of(context).colorScheme.onSurface,
        letterSpacing: 0.1,
        textBaseline: TextBaseline.alphabetic,
        height: 1.43,
        inherit: false,
        leadingDistribution: TextLeadingDistribution.even,
      ),
      bodyLarge: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 16.0,
        color: Theme.of(context).colorScheme.onSurface,
        letterSpacing: 0.5,
        textBaseline: TextBaseline.alphabetic,
        height: 1.5,
        inherit: false,
        leadingDistribution: TextLeadingDistribution.even,
      ),
      bodyMedium: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14.0,
        color: Theme.of(context).colorScheme.onSurface,
        letterSpacing: 0.25,
        textBaseline: TextBaseline.alphabetic,
        height: 1.43,
        inherit: false,
        leadingDistribution: TextLeadingDistribution.even,
      ),
      bodySmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 12.0,
        color: Theme.of(context).colorScheme.onSurface,
        letterSpacing: 0.4,
        textBaseline: TextBaseline.alphabetic,
        height: 1.33,
        inherit: false,
        leadingDistribution: TextLeadingDistribution.even,
      ),
      labelLarge: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
        color: Theme.of(context).colorScheme.onSurface,
        letterSpacing: 0.1,
        textBaseline: TextBaseline.alphabetic,
        height: 1.43,
        inherit: false,
        leadingDistribution: TextLeadingDistribution.even,
      ),
      labelMedium: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
        color: Theme.of(context).colorScheme.onSurface,
        letterSpacing: 0.5,
        textBaseline: TextBaseline.alphabetic,
        height: 1.33,
        inherit: false,
        leadingDistribution: TextLeadingDistribution.even,
      ),
      labelSmall: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 11.0,
        color: Theme.of(context).colorScheme.onSurface,
        letterSpacing: 0.5,
        textBaseline: TextBaseline.alphabetic,
        height: 1.45,
        inherit: false,
        leadingDistribution: TextLeadingDistribution.even,
      ),
    ),
  );
}
