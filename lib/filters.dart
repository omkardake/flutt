//import 'dart:html';

import 'package:flutter/material.dart';

class Filters extends StatefulWidget {
  const Filters({Key? key}) : super(key: key);

  @override
  State<Filters> createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  int _current = 0;

  List<String> images = [
    'assets/sofaa.png',
    'assets/chair.png',
    'assets/sofaa.png',
    'assets/chair.png',
    'assets/sofaa.png',
    'assets/chair.png',
  ];

  List<Widget> listimagecards() {
    return images
        .map((element) => ClipRRect(
              //borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                element,
                height: 80,
                width: 100,
                fit: BoxFit.contain,
                color: Colors.orange,
              ),
            ))
        .toList();
  }

  RangeValues _currentRangeValues = const RangeValues(20, 60);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Filters',
          style: TextStyle(fontSize: 30),
        ),
        toolbarHeight: 100,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 231, 155, 68),
            Color.fromARGB(255, 246, 90, 62),
          ])),
        ),
      ),
      body: SafeArea(
        // width: MediaQuery.of(context).size.width,
        //height: MediaQuery.of(context).size.height,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Category',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_ios))
                ],
              ),
            ),
            SizedBox(
              height: 90,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: listimagecards(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Pricing',
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            RangeSlider(
                values: _currentRangeValues,
                min: 1,
                max: 1000,
                activeColor: Colors.purple,
                inactiveColor: Colors.grey,
                labels: RangeLabels(
                  _currentRangeValues.start.round().toString(),
                  _currentRangeValues.end.round().toString(),
                ),
                onChanged: (RangeValues values) {
                  setState(() {
                    _currentRangeValues = values;
                  });
                }),
            // const SizedBox(
            //   height: 25,
            // ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: const [
                  Text('Colors',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold))
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                circleColor(Colors.white70),
                circleColor(Colors.black),
                circleColor(Colors.grey),
                circleColor(Colors.purple),
                circleColor(Colors.yellow),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                circleColor(
                  Colors.deepOrange,
                ),
                circleColor(Colors.purpleAccent),
                circleColor(Colors.lightBlue),
                circleColor(Colors.blueAccent),
                circleColor(Colors.greenAccent),
              ],
            )
          ],
        ),
      ),
    );
  }

  CircleAvatar circleColor(Color color) {
    return CircleAvatar(
      radius: 25,
      backgroundColor: color,
    );
  }
}
