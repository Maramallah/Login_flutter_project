import 'package:flutter/material.dart';
import 'package:signup/Const/colors.dart';
import 'package:signup/Widgets/grid.dart';
import 'package:signup/data.dart';

class TWO extends StatefulWidget {
  const TWO({super.key});

  @override
  State<TWO> createState() => _TWOState();
}

class _TWOState extends State<TWO> {
  List<String> filteredData=[];
  @override
  void initState() {
    var categories=dataRestaurants.map((e) => e.category).toList();
    var categoriesSet=categories.toSet();
    filteredData=categoriesSet.toList();
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.settings))
        ],
        backgroundColor: Colors.blue,
        foregroundColor: white,

      ),
      backgroundColor: Colors.blue,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView(
          gridDelegate:
         const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:2,
          mainAxisSpacing: 20,
           crossAxisSpacing: 20
          ),
        
          children: filteredData.map((e) => HomeGrid(category: e,)
            
           ) .toList() ,
         
      ),
      ));
    
  }
}