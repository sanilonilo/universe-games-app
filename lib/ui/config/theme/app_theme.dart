import 'package:flutter/material.dart';

class AppTheme{
  final ThemeData theme = ThemeData();

  ThemeData getTheme(){
    return theme.copyWith(
      colorScheme: theme.colorScheme.copyWith(
          primary: Colors.green,
          secondary: Colors.white,
      ),
      textTheme: textTheme(),
      scaffoldBackgroundColor: Colors.black26,
      inputDecorationTheme: inputTheme()
    );
  }

  TextTheme textTheme(){
    return theme.textTheme.copyWith(
      titleLarge: const TextStyle(fontSize: 30),
      titleMedium: const TextStyle(fontSize: 25),
      titleSmall: const TextStyle(fontSize: 20),
      bodyLarge: const TextStyle(fontSize: 16),
      bodyMedium: const TextStyle(fontSize: 14),
      bodySmall: const TextStyle(fontSize: 12),
      labelLarge: const TextStyle(fontSize: 11),
      labelMedium: const TextStyle(fontSize: 10),
      labelSmall: const TextStyle(fontSize: 9),
    );
  }

  InputDecorationTheme inputTheme(){
    return theme.inputDecorationTheme.copyWith(
          border: const UnderlineInputBorder(
            borderSide:  BorderSide(color: Colors.white)
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white)
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white)
          ),
          labelStyle: const TextStyle(color: Colors.white)
        );
  }
}