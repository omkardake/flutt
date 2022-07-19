// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
//simport 'package:flutter/rendering.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
    TabController(length: 2, vsync: this);
    return DefaultTabController(
      length: 2,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
            toolbarHeight: 50,
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color.fromARGB(255, 243, 150, 45),
                Color.fromARGB(255, 246, 90, 62),
              ])),
            )),
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TabBar(
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey,
                ),
                controller: tabController,
                isScrollable: true,
                labelPadding: const EdgeInsets.symmetric(horizontal: 30),
                tabs: const [
                  Tab(
                    child: Text(
                      "Log in",
                      style: TextStyle(color: Colors.deepPurple),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Sing up",
                      style: TextStyle(color: Colors.deepPurple),
                    ),
                  )
                ],
              ),
              Expanded(
                child: TabBarView(controller: tabController, children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        const Padding(padding: EdgeInsets.only(top: 100)),
                        const TextField(
                          decoration: InputDecoration(
                            hintText: 'Mobile No.',
                          ),
                        ),
                        const SizedBox(
                          height: 80,
                        ),
                        const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Password',
                          ),
                        ),
                        const SizedBox(height: 100),
                        Container(
                          height: 50,
                          width: 200,
                          child: MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            color: const Color.fromARGB(255, 246, 90, 62),
                            onPressed: () {
                              Navigator.pushNamed(context, '/btmnavbar');
                            },
                            child: const Text(
                              'LOG IN',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/verification');
                          },
                          child: const Text("Forgot Your Password?",
                              style: TextStyle(
                                color: Colors.deepPurple,
                                fontSize: 18,
                                //decoration: TextDecoration.underline,
                              )),
                        )
                      ],
                    ),
                  ),
                  /////////////// Text("data"),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        const Padding(padding: EdgeInsets.only(top: 50)),
                        const TextField(
                          decoration: InputDecoration(
                            hintText: 'Mobile No.',
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Password',
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: ' Confirm Password',
                          ),
                        ),
                        const SizedBox(height: 80),
                        Container(
                          height: 50,
                          width: 200,
                          child: MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            color: const Color.fromARGB(255, 246, 90, 62),
                            onPressed: () {
                              Navigator.pushNamed(context, '/login');
                            },
                            child: const Text(
                              'SING UP',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
