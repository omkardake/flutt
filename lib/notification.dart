import 'package:flutter/material.dart';

class MyNotification extends StatefulWidget {
  const MyNotification({Key? key}) : super(key: key);

  @override
  State<MyNotification> createState() => _MyNotificationState();
}

class _MyNotificationState extends State<MyNotification> {
  bool _value1 = true;
  bool _value2 = true;
  bool _value3 = true;
  bool _value4 = true;
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
            Color.fromARGB(255, 231, 155, 68),
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
                children: [
                  SwitchListTile(
                      value: _value1,
                      title: const Text("Product Updates"),
                      subtitle: const Text("you get new product updates."),
                      activeColor: const Color.fromARGB(255, 246, 90, 62),
                      onChanged: (value) {
                        setState(() {
                          _value1 = value;
                        });
                      }),
                  const Divider(
                    indent: 15,
                    endIndent: 15,
                    thickness: 2,
                    color: Colors.black26,
                  ),
                  SwitchListTile(
                      value: _value2,
                      title: const Text("Comments"),
                      subtitle: const Text("you get users comments update."),
                      activeColor: const Color.fromARGB(255, 246, 90, 62),
                      onChanged: (value) {
                        setState(() {
                          _value2 = value;
                        });
                      }),
                  const Divider(
                    indent: 15,
                    endIndent: 15,
                    thickness: 2,
                    color: Colors.black26,
                  ),
                  SwitchListTile(
                      value: _value3,
                      title: const Text("Offer Updates"),
                      subtitle: const Text("you get new offer updates here."),
                      activeColor: const Color.fromARGB(255, 246, 90, 62),
                      onChanged: (value) {
                        setState(() {
                          _value3 = value;
                        });
                      }),
                  const Divider(
                    indent: 15,
                    endIndent: 15,
                    thickness: 2,
                    color: Colors.black26,
                  ),
                  SwitchListTile(
                      value: _value4,
                      title: const Text("Notification"),
                      subtitle: const Text("allow notifications or not."),
                      activeColor: const Color.fromARGB(255, 246, 90, 62),
                      onChanged: (value) {
                        setState(() {
                          _value4 = value;
                        });
                      }),
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
              color: const Color.fromARGB(255, 246, 90, 62),
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
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
