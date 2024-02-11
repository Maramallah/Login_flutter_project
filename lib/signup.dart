// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key});

  @override
  Widget build(BuildContext context) {
    var emailControl = TextEditingController();
    var NameControl = TextEditingController();
    var PasswordControl = TextEditingController();

    return Scaffold(
    
     
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            decoration: BoxDecoration(
             
              borderRadius: BorderRadius.circular(20.0),
             
            ),
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                ),
                const SizedBox(height: 25,),
                Padding(
                  padding: EdgeInsets.only(left: 13.0),
                  child: const Text(
                    'Name',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(height: 2,),
                TextFormField(
                  controller: NameControl,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    labelText: 'Enter name',
                  ),
                  style: TextStyle(
                    fontSize: 15,
                  ),
                  onFieldSubmitted: (value) {
                    print(value);
                  },
                ),
                const SizedBox(height: 10,),
                Padding(
                  padding: EdgeInsets.only(left: 13.0),
                  child: const Text(
                    'Email',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(height: 2,),
                TextFormField(
                  controller: emailControl,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    labelText: 'Enter email',
                  ),
                  onFieldSubmitted: (value) {
                    print(value);
                  },
                ),
                const SizedBox(height: 10,),
                Padding(
                  padding: EdgeInsets.only(left: 13.0),
                  child: const Text(
                    'Password',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(height: 2,),
                TextFormField(
                  controller: PasswordControl,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    labelText: 'Enter password',
                  ),
                  onFieldSubmitted: (value) {
                    print(value);
                  },
                ),
                const SizedBox(height: 10,),
                Padding(
                  padding: EdgeInsets.only(left: 13.0),
                  child: const Text(
                    'Forgot password ?',
                    style: TextStyle(
                      color: Color.fromARGB(157, 0, 0, 0),
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                    ),
                  ),
                ),
                const SizedBox(height: 15,),
                Align(
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 12, 83, 184),
                      padding: const EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 30,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                        side: BorderSide(color: Color.fromARGB(255, 22, 40, 203)),
                      ),
                    ),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
