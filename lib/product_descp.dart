//import 'dart:html';

import 'package:flutter/material.dart';
//import 'package:furniturestore/main.dart';

class ProductDescp extends StatefulWidget {
  const ProductDescp({Key? key}) : super(key: key);

  @override
  State<ProductDescp> createState() => _ProductDescpState();
}

class _ProductDescpState extends State<ProductDescp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            toolbarHeight: 50,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color.fromARGB(255, 243, 150, 45),
                Color.fromARGB(255, 246, 90, 62),
              ])),
            )),
        body: Container(
          child: Column(
            children: [
              Center(
                  child: Image.asset(
                'assets/chair.png',
                height: 200,
                width: 1000,
                color: Colors.orange,
              )),
              Container(
                height: 200,
                width: 400,
                padding: EdgeInsets.all(10),
                child: Card(
                  shadowColor: Colors.black,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Chair',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                            //textAlign: TextAlign.left,
                          ),
                          Icon(
                            Icons.favorite_border,
                            size: 45,
                            color: Colors.red,
                          )
                          // Image.asset(
                          //   'assets/heart.png',
                          //   height: 40,
                          //   width: 40,
                          //   color: Color.fromARGB(255, 246, 90, 62),
                          // )
                        ],
                      ),
                      Divider(
                        indent: 50,
                        endIndent: 200,
                        thickness: 3,
                        color: Colors.orange,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "\$55",
                            style: TextStyle(
                              color: Colors.deepPurple,
                              fontSize: 55,
                              fontWeight: FontWeight.bold,
                            ),
                            //textAlign: TextAlign.left,
                          ),
                          Container(
                            height: 50,
                            width: 120,
                            child: MaterialButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              color: Color.fromARGB(255, 246, 90, 62),
                              onPressed: () {
                                Navigator.pushNamed(context, '/card');
                              },
                              child: const Text(
                                'Buy Now',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.shopping_bag_outlined,
                          size: 40,
                          color: Colors.orange,
                        ),
                        Text(
                          "Description",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    const Text(
                        "ldkodko kdfmfdf lorem msnkdjhaihaihihidhcidhcui ldkodko kdfmfdf lorem msnkdjhaihaihihidhcidhculdkodko kdfmfdf lorem msnkdjhaihaihihidhcidhculdkodko kdfmfdf lorem msnkdjhaihaihihidhcidhcu")
                  ],
                ),
              )
              // Container(
              //   child: (Text(
              //     'Descriiption',

              //     ),
              //     textAlign: TextAlign.start,
              //   )),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
