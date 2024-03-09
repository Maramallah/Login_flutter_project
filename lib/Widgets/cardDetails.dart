import 'package:flutter/material.dart';
import 'package:signup/model/shop.dart';

class CardDetailes extends StatelessWidget {
  const CardDetailes({super.key, required this.category});
  final Restaurants category;

  @override
  Widget build(BuildContext context) {
    return  Card(
child: Container(
  width: 150,
  height: 150,
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(16),
    
  ),
  child:Column(
    
    children: [
     
      Text(category.name, style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25
      ),
      ), 
Text(category.image ,style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15
      ),),
Text( (category.rating.toString()), style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15
      ),),
Text(category.branches.toString(), style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15
      ),)

    ],
  ) 
             ) 

              );
  }
}