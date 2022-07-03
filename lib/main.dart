import 'package:flutter/material.dart';

import 'package:online_furniture_store/card.dart';

import 'package:online_furniture_store/login.dart';
import 'package:online_furniture_store/notification.dart';
import 'package:online_furniture_store/profile.dart';
import 'package:online_furniture_store/product_descp.dart';
import 'package:online_furniture_store/start.dart';
import 'package:online_furniture_store/verification.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/start',
      routes: {
        '/start': (context) => const MyStart(),
        '/login': (context) => const MyLogin(),
        '/profile': (context) => const MyProfile(),
        '/card': (context) => const MyCard(),
        '/product_descp': (context) => const ProductDescp(),
        '/verification': (context) => const MyVerify(),
        '/notification': (context) => const MyNotification(),
      }));
}
