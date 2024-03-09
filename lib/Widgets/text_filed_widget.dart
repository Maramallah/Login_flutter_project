import 'package:flutter/material.dart';

class TextFiledWidget extends StatelessWidget {
  const TextFiledWidget({super.key,required this.controller,required this.prefixIcon, this.suffixIcon,required this.vistext});
  final TextEditingController controller;
  final Icon prefixIcon;
  final IconButton? suffixIcon;
  final bool vistext;
  
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: vistext,
      decoration: InputDecoration(
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon
      ),
     
    );
    
  }
}
