//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_furniture_store/basket.dart';
import 'package:online_furniture_store/btmnavbar.dart';
import 'package:online_furniture_store/card.dart';
import 'package:online_furniture_store/filters.dart';
import 'package:online_furniture_store/login.dart';
import 'package:online_furniture_store/notification.dart';
import 'package:online_furniture_store/profile.dart';
import 'package:online_furniture_store/product_descp.dart';
import 'package:online_furniture_store/start.dart';
import 'package:online_furniture_store/topup.dart';
import 'package:online_furniture_store/verification.dart';
import 'package:online_furniture_store/my_controller.dart';

void main() {
  runApp(GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/basket',
      routes: {
        '/start': (context) => const MyStart(),
        '/login': (context) => const MyLogin(),
        '/profile': (context) => const MyProfile(),
        '/card': (context) => const MyCard(),
        '/product_descp': (context) => const ProductDescp(),
        '/verification': (context) => const MyVerify(),
        '/notification': (context) => const MyNotification(),
        '/btmnavbar': (context) => const MyPage(),
        '/filters': (context) => const Filters(),
        '/topup': (context) => const topup(),
        '/basket': (context) => const Basket(),
        // '/my_controller': (context) =>  MyController()
      }));
}
