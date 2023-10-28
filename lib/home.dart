import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});


@override
State<home> createState() => _LoginState();
}

class _LoginState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      alignment: Alignment.center,
      child: const Text('Homeee')
    );
  }
}