import 'package:flutter/material.dart';
import 'package:app/ui/config/theme/app_theme.dart';
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
      title: 'Universe game',
      theme: AppTheme().getTheme(),
      home: Login(),
      debugShowCheckedModeBanner: false,
    );
  }
}
