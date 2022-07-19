import 'package:flutter/material.dart';

//import 'package:online_furniture_store/product_descp.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 50,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 243, 150, 45),
              Color.fromARGB(255, 246, 90, 62),
            ])),
          ),
        ),
        body: Column(
          children: [
            const Padding(padding: EdgeInsets.only(top: 15)),
            Image.asset(
              'assets/profileicon.png',
              height: 150,
              width: 150,
            ),
            const Text(
              'USER NAME',
              style: TextStyle(fontSize: 20),
            ),
            const Text('Location'),
            const SizedBox(
              height: 50,
            ),
            InkWell(
              child: Column(
                children: [
                  ListTile(
                    onTap: () {},
                    title: const Text('Messages'),
                    leading: const Icon(Icons.message_outlined),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, '/notification');
                    },
                    title: const Text('Notifications'),
                    leading: const Icon(Icons.notifications_none),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, '/topup');
                    },
                    title: const Text('Accounts Details'),
                    leading: const Icon(Icons.person_outlined),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, '/product_descp');
                    },
                    title: const Text('My Purchases'),
                    leading: const Icon(Icons.shopping_cart_outlined),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, '/filters');
                    },
                    title: const Text('Settings'),
                    leading: const Icon(Icons.settings_outlined),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
