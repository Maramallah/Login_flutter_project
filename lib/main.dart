import 'package:flutter/material.dart';
import 'package:signup/Screens/log_in.dart';


void main() {
  runApp(const Start());
}
class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      
    );
  }
}


