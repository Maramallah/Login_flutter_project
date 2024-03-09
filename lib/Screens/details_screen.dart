//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
//import 'package:signup/Const/colors.dart';
import 'package:signup/Widgets/cardDetails.dart';
import 'package:signup/data.dart';

class DetailesScreen extends StatelessWidget {
  const DetailesScreen({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body:  Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: dataRestaurants.where((e) => e.category==category).map((e) => 
            CardDetailes(category: e,)
              ).toList()
            ),
            
          )
        
      );
    
  }
}