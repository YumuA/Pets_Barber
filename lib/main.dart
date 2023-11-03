<<<<<<< HEAD
  import 'login.dart';
=======
  import 'package:app_petsbarber/view/login.dart';
>>>>>>> 457e236dfd659ffff8b0b7846aa9371919125d5d
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
<<<<<<< HEAD
    }

  }
  
=======
  }
}
>>>>>>> 457e236dfd659ffff8b0b7846aa9371919125d5d
