import 'package:flutter/material.dart';
import 'package:signup/Screens/details_screen.dart';

class HomeGrid extends StatelessWidget {
  const HomeGrid({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(
        MaterialPageRoute(builder: (ctx)=>DetailesScreen(category: category,))
      ) ;
      },
      child: Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                  
                  child: Center(child: Text(category, style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    
                  ),
                  ),
                  ),),
    );
  }
}