import 'package:flutter/material.dart';
import './ui/screens/Login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final ThemeData theme = ThemeData();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.green,
          secondary: Colors.white,
        ),
        textTheme: theme.textTheme.copyWith(
          titleLarge: const TextStyle(fontSize: 30),
          titleMedium: const TextStyle(fontSize: 25),
          titleSmall: const TextStyle(fontSize: 20),
          bodyLarge: const TextStyle(fontSize: 16),
          bodyMedium: const TextStyle(fontSize: 14),
          bodySmall: const TextStyle(fontSize: 12),
          labelLarge: const TextStyle(fontSize: 11),
          labelMedium: const TextStyle(fontSize: 10),
          labelSmall: const TextStyle(fontSize: 9),
        ),
        scaffoldBackgroundColor: Colors.black26,
        inputDecorationTheme: theme.inputDecorationTheme.copyWith(
          border: const UnderlineInputBorder(
            borderSide: const BorderSide(color: Colors.white)
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: const BorderSide(color: Colors.white)
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: const BorderSide(color: Colors.white)
          ),
          labelStyle: TextStyle(color: Colors.white)
        )
      ),
      home: Login(),
      debugShowCheckedModeBanner: false,
    );
  }
}
