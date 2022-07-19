//import 'dart:html';

import 'package:flutter/material.dart';

class MyStart extends StatefulWidget {
  const MyStart({Key? key}) : super(key: key);

  @override
  State<MyStart> createState() => _MyStartState();
}

class _MyStartState extends State<MyStart> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 243, 150, 45),
                  Color.fromARGB(255, 246, 90, 62),
                ]),
          ),
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.only(top: 70)),
              Container(
                child: Text(
                  'ONLINE  FURNITURE \nSTORE',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                padding: EdgeInsets.only(top: 30),
              ),
              const SizedBox(height: 10),
              Container(
                child: Image.asset(
                  'assets/sofaa.png',
                  color: Colors.white,
                  height: 200,
                  width: 400,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                height: 50,
                width: 200,
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: const Text(
                    'GET STARTED',
                    style: TextStyle(
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(height: 80),
              Container(
                child: Column(
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text("Sing in here",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            decoration: TextDecoration.underline,
                          )),
                    ),
                    Row(
                      children: [],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
