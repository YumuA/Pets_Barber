  import 'package:app_petsbarber/view/login.dart';
  import 'package:flutter/material.dart';

  void main() {
    runApp(const MainApp());
  }

  class MainApp extends StatelessWidget {
    const MainApp({super.key});

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blueGrey),
        home: const Login(),
    );
  }
}