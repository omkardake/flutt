// ListTile(
//                     title: Text('Product Updates'),
//                     subtitle: Text('omkmhufskjfbgfg'),
//                     //trailing: ,
//                   ),
//                   Divider(
//                     indent: 15,
//                     endIndent: 15,
//                     thickness: 2,
//                     color: Colors.black26,
//                   ),
//                   ListTile(
//                     title: Text('Comments'),
//                     subtitle: Text('omkmhufskjfbgfg'),
//                   ),
//                   Divider(
//                     indent: 15,
//                     endIndent: 15,
//                     thickness: 2,
//                     color: Colors.black26,
//                   ),
//                   ListTile(
//                     title: Text('Offer Updates'),
//                     subtitle: Text('omkmhufskjfbgfg'),
//                   ),
//                   Divider(
//                     indent: 15,
//                     endIndent: 15,
//                     thickness: 2,
//                     color: Colors.black26,
//                   ),
//                   ListTile(
//                     title: Text('Notifications'),
//                     subtitle: Text('omkmhufskjfbgfg'),






//********************************************************************* */


// 

//   import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';

// class PhotoSlider extends StatefulWidget {
//   const PhotoSlider({Key? key}) : super(key: key);

//   @override
//   State<PhotoSlider> createState() => _PhotoSliderState();
// }

// class _PhotoSliderState extends State<PhotoSlider> {
//   late int _current = 0;
//   final List<String> images = [
//     'assets/chair.png',
//     'assets/sofaa.png',
//     'assets/heart.png',
//     'assets/msg.jpg',
//     'assets/profileicon.png',
//     'assets/userprofile.png',
//   ];
  // final List<String> places = [
  //   'Asia',
  //   'Australia',
  //   'Europe',
  //   'North America',
  //   'South America',
  //   'Africa'
  // ];

//   List<Widget> generateImageTiles() {
//     return images
//         .map((element) => ClipRRect(
//               borderRadius: BorderRadius.circular(15.0),
//               child: Image.asset(
//                 element,
//                 fit: BoxFit.contain,
//                 height: 100,
//                 width: 100,
//               ),
//             ))
//         .toList();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           AppBar(
//             centerTitle: true,
//             title: const Text(
//               'Filters',
//               style: TextStyle(fontSize: 25),
//             ),
//             toolbarHeight: 100,
//             flexibleSpace: Container(
//               decoration: const BoxDecoration(
//                   gradient: LinearGradient(colors: [
//                 Color.fromARGB(255, 243, 150, 45),
//                 Color.fromARGB(255, 246, 90, 62),
//               ])),
//             ),
//           ),
//           Row(
//             children: [
//               Text('Category'),
//             ],
//           ),
//           Container(
//             color: Colors.transparent,
//             padding: const EdgeInsets.only(top: 25),
//             child: Stack(
//               children: [
//                 CarouselSlider(
//                     items: generateImageTiles(),
//                     options: CarouselOptions(
//                         enlargeCenterPage: true,
//                         aspectRatio: 20 / 5,
//                         onPageChanged: (index, other) {
//                           setState(() {
//                             _current = index;
//                           });
//                         })),
//                 // AspectRatio(
//                 //   aspectRatio: 15 / 8,
//                 //   child: Center(
//                 // child: Text(
//                 //   places[_current],
//                 //   style: TextStyle(
//                 //     decoration: TextDecoration.none,
//                 //     color: Colors.white,
//                 //     fontSize: MediaQuery.of(context).size.width / 15,
//                 //   ),
//                 // ),
//                 //),
//                 //)
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


//+*******************************************************************


// import 'package:flutter/material.dart';

// class Filters extends StatefulWidget {
//   const Filters({Key? key}) : super(key: key);

//   @override
//   State<Filters> createState() => _FiltersState();
// }

// class _FiltersState extends State<Filters> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text(
//           'Filters',
//           style: TextStyle(fontSize: 25),
//         ),
//         toolbarHeight: 100,
//         flexibleSpace: Container(
//           decoration: const BoxDecoration(
//               gradient: LinearGradient(colors: [
//             Color.fromARGB(255, 243, 150, 45),
//             Color.fromARGB(255, 246, 90, 62),
//           ])),
//         ),
//       ),
//       body: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               const Text('Category',
//                   style: TextStyle(
//                     fontSize: 30,
//                   )),
//               IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios))
//             ],
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Image.asset(
//                   'assets/sofaa.png',
//                   height: 80,
//                   width: 100,
//                 ),
//                 Image.asset(
//                   'assets/sofaa.png',
//                   height: 80,
//                   width: 100,
//                 ),
//                 Image.asset(
//                   'assets/sofaa.png',
//                   height: 80,
//                   width: 100,
//                 ),
//                 Image.asset(
//                   'assets/sofaa.png',
//                   height: 80,
//                   width: 100,
//                 ),
//                 Image.asset(
//                   'assets/sofaa.png',
//                   height: 80,
//                   width: 100,
//                 ),
//                 Image.asset(
//                   'assets/sofaa.png',
//                   height: 80,
//                   width: 100,
//                 ),
//                 Image.asset(
//                   'assets/sofaa.png',
//                   height: 80,
//                   width: 100,
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }


//***************************************************************** */

// int _current = 0;

// List<String> images = [

// "images/sofa11.png",

// "images/chair.png",

// "images/sofa11.png",

// "images/chair.png",

// "images/sofa11.png",

// "images/chair.png",

// "images/sofa11.png"

// ];



// List<Widget> generateImageTiles() {

// return images

// .map((element) => ClipRRect(

// borderRadius: BorderRadius.circular(15.0),

// child: Image.asset(

// element,

// fit: BoxFit.contain,

// ),

// ))

// .toList();

// }
// RangeValues _currentRangeValues = const RangeValues(20, 60);

// // SfRangeValues _values = SfRangeValues(4.0, 8.0);

// late Color? activeColor;

// late Color? thumbColor;

// late Color? inactiveColor;

// @override

// Widget build(BuildContext context) {

// return Scaffold(

// appBar: CustomAppBar(context, "FILTERS", () {}),

// body: SizedBox(

// width: MediaQuery.of(context).size.width,

// height: MediaQuery.of(context).size.height,

// child: Column(

// mainAxisAlignment: MainAxisAlignment.spaceEvenly,

// children: [

// Padding(

// padding: const EdgeInsets.all(18.0),

// child: Row(

// mainAxisAlignment: MainAxisAlignment.spaceBetween,

// children: [

// textHeadings('Category', Colors.black),

// textHeadings('More >', Colors.grey)

// ],

// ),

// ),

// SizedBox(
// height: 120,
// child: SingleChildScrollView(
// scrollDirection: Axis.horizontal,
// child:
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: generateImageTiles(),
// ))),
// Padding(
// padding: const EdgeInsets.all(18.0),
// child: Row(
// children: [textHeadings('Pricing', Colors.black)],
// ),
// ),

// SliderTheme(
// data: SliderTheme.of(context).copyWith(
// activeTrackColor: Colors.white,
// inactiveTrackColor: Colors.grey,
// trackHeight: 4.0,
// thumbColor: Colors.redAccent,
// ),
// child: RangeSlider(
// values: _currentRangeValues,
// max: 1000,
// min: 1,
// activeColor: Colors.amber, // thumbColor: Colors.amber,
// inactiveColor: Colors.grey.shade200,
// labels: RangeLabels(
// _currentRangeValues.start.round().toString(),
// _currentRangeValues.end.round().toString(),
// ),
// // _currentSliderValue.round().toString(),
// onChanged: (RangeValues values) {
// setState(() {
// _currentRangeValues = values;
// });
// },
// ),
// ),
// Padding(
// padding: const EdgeInsets.all(18.0),
// child: Row(
// children: [textHeadings('Colors', Colors.black)],
// ),
// )
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// children: [
// colorpallete(Colors.white10),
// colorpallete(Colors.black),
// colorpallete(Colors.grey),
// colorpallete(Colors.purple),
// colorpallete(Colors.amber),
// ],
// ),
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// children: [
// colorpallete(Colors.orange),
// colorpallete(Colors.deepPurple),
// colorpallete(Colors.blue),
// colorpallete(Colors.cyan),
// colorpallete(Colors.green),
// ],
// ),],),),
// );
// }


