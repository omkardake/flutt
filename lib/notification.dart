import 'package:flutter/material.dart';

class MyNotification extends StatefulWidget {
  const MyNotification({Key? key}) : super(key: key);

  @override
  State<MyNotification> createState() => _MyNotificationState();
}

class _MyNotificationState extends State<MyNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Notifications',
          style: TextStyle(fontSize: 25),
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
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(bottom: 20, top: 20, left: 20, right: 20),
            child: Card(
              color: Colors.white,
              shadowColor: Colors.grey,
              elevation: 8.5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: const [
                  ListTile(
                    title: Text('Product Updates'),
                    subtitle: Text('omkmhufskjfbgfg'),
                    // trailing: ,
                  ),
                  Divider(
                    indent: 15,
                    endIndent: 15,
                    thickness: 2,
                    color: Colors.black26,
                  ),
                  ListTile(
                    title: Text('Comments'),
                    subtitle: Text('omkmhufskjfbgfg'),
                  ),
                  Divider(
                    indent: 15,
                    endIndent: 15,
                    thickness: 2,
                    color: Colors.black26,
                  ),
                  ListTile(
                    title: Text('Offer Updates'),
                    subtitle: Text('omkmhufskjfbgfg'),
                  ),
                  Divider(
                    indent: 15,
                    endIndent: 15,
                    thickness: 2,
                    color: Colors.black26,
                  ),
                  ListTile(
                    title: Text('Notifications'),
                    subtitle: Text('omkmhufskjfbgfg'),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 50,
            width: 200,
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              color: Color.fromARGB(255, 246, 90, 62),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Container(
                        child: AlertDialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          // backgroundColor: Colors.grey.shade100,
                          title: const Text(
                              'Notification Updated Successfully..!'),
                        ),
                      );
                    });
                // Navigator.pushNamed(context, '/profile');
              },
              child: const Text(
                'Update Settings',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
