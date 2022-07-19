import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_furniture_store/my_controller.dart';

class Basket extends StatefulWidget {
  const Basket({Key? key}) : super(key: key);

  @override
  State<Basket> createState() => _BasketState();
}

class _BasketState extends State<Basket> {
  final MyController c = Get.put(MyController());
  final MyController s = Get.put(MyController());
  final MyController b = Get.put(MyController());
  final MyController a = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'My Basket',
          style: TextStyle(fontSize: 30),
        ),
        toolbarHeight: 100,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 243, 150, 45),
            Color.fromARGB(255, 246, 90, 62),
          ])),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/chair.png',
                    height: 80,
                    width: 80,
                  ),
                  Column(
                    children: const [
                      Text("Chair"),
                      SizedBox(
                        height: 25,
                      ),
                      Text('Price')
                    ],
                  ),
                  IconButton(
                      onPressed: () => c.incrementChair(),
                      icon: const Icon(Icons.add)),
                  Obx(() => Text(c.chair.toString())),
                  IconButton(
                      onPressed: () => c.decrementChair(),
                      icon: const Icon(Icons.remove)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/sofaa.png',
                    height: 80,
                    width: 80,
                  ),
                  Column(
                    children: const [
                      Text("Sofaa"),
                      SizedBox(
                        height: 25,
                      ),
                      Text('Price')
                    ],
                  ),
                  IconButton(
                      onPressed: () => s.incrementSofaa(),
                      icon: const Icon(Icons.add)),
                  Obx(() => Text(s.sofaa.toString())),
                  IconButton(
                      onPressed: () => c.decrementSofaa(),
                      icon: const Icon(Icons.remove)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/bed2.png',
                    height: 80,
                    width: 80,
                  ),
                  Column(
                    children: const [
                      Text("Bed"),
                      SizedBox(
                        height: 25,
                      ),
                      Text('Price')
                    ],
                  ),
                  IconButton(
                      onPressed: () => b.incrementBed(),
                      icon: const Icon(Icons.add)),
                  Obx(() => Text(b.bed.toString())),
                  IconButton(
                      onPressed: () => b.decrementBed(),
                      icon: const Icon(Icons.remove)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/armchair.png',
                    height: 80,
                    width: 80,
                  ),
                  Column(
                    children: const [
                      Text("Arm Chair"),
                      SizedBox(
                        height: 25,
                      ),
                      Text('Price')
                    ],
                  ),
                  IconButton(
                      onPressed: () => a.incrementArm(),
                      icon: const Icon(Icons.add)),
                  Obx(() => Text(a.arm.toString())),
                  IconButton(
                      onPressed: () => a.decrementArm(),
                      icon: const Icon(Icons.remove)),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              const Divider(
                endIndent: 15,
                indent: 15,
                height: 5,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(
                      Icons.shopping_cart,
                      color: Colors.deepOrange,
                      size: 100,
                    ),
                    Text(
                      'Total :',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
