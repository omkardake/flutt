import 'package:flutter/material.dart';

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
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 243, 150, 45),
              Color.fromARGB(255, 246, 90, 62),
            ])),
          ),
        ),
        body: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 15)),
            Image.asset(
              'assets/profileicon.png',
              height: 150,
              width: 150,
            ),
            Text(
              'USER NAME',
              style: TextStyle(fontSize: 20),
            ),
            Text('Location'),
            SizedBox(
              height: 50,
            ),
            InkWell(
              child: Column(
                children: [
                  ListTile(
                    onTap: () {},
                    title: Text('Messages'),
                    leading: Icon(Icons.message_outlined),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, '/notification');
                    },
                    title: Text('Notifications'),
                    leading: Icon(Icons.notifications_none),
                  ),
                  ListTile(
                    onTap: () {},
                    title: Text('Accounts Details'),
                    leading: Icon(Icons.person_outlined),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, '/product_descp');
                    },
                    title: Text('My Purchases'),
                    leading: Icon(Icons.shopping_cart_outlined),
                  ),
                  ListTile(
                    onTap: () {},
                    title: Text('Settings'),
                    leading: Icon(Icons.settings_outlined),
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
