import 'package:flutter/material.dart';
import 'package:signup/signup.dart';

class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
     return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Signup(),
    );
  }
}