import 'package:flutter/material.dart';
import 'package:signup/Const/colors.dart';
import 'package:signup/Screens/two.dart';
import 'package:signup/Widgets/text_filed_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailcontroller = TextEditingController();
   var passwordcontroller = TextEditingController();
   bool vistext=true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
          decoration:const BoxDecoration(
            gradient: LinearGradient(colors: backGround,
            begin: Alignment.topLeft
            ,end: Alignment.bottomRight ),

          ),
          child: Center(
            child: Container(
              height: 500,
              width: 350,
              decoration: BoxDecoration(
               color: white,
               borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Image.asset('assets/images/pic.jpg'),
                  const Text('login', style: TextStyle(
                   fontSize: 30,
                   fontWeight: FontWeight.bold,
                   
                  ),
                  ),
                  const SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFiledWidget( controller :  emailcontroller,
                    vistext: false,
                    prefixIcon: const Icon(Icons.person),
                                    
                     ),
                  ),
                   const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFiledWidget( controller :  passwordcontroller,
                      vistext: vistext,
                                        prefixIcon: const Icon(Icons.key),
                                        
                                       suffixIcon: IconButton(onPressed: (){setState(() {
                                         vistext= !vistext;
                                       });}, icon: const Icon(Icons.visibility)),
                                         ),
                    ),
                  const SizedBox(height: 15,),
                   ElevatedButton(onPressed: (){
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (ctx)=> TWO())
                  );
                   }, child:const Text('login'))

                ],
              ),
              

            ),
          ),
      ),
    );
  }
}