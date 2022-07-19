import 'package:flutter/material.dart';
import 'package:online_furniture_store/card.dart';

class topup extends StatelessWidget {
  const topup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Top Up Furpay',
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
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Card(
              shadowColor: Colors.grey,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                height: 130,
                width: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      'Balance',
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    // ignore: prefer_const_constructors
                    Text(
                      '\$205,27',
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 50, color: Colors.purple),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: Row(
                children: const [
                  Text(
                    'Payment Method',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                    //textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: paymentOption(
                  const Text('Mobile Banking',
                      style: TextStyle(fontSize: 18, color: Colors.black)),
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.amber,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/card');
                    },
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: paymentOption(
                  const Text('Internet Banking',
                      style: TextStyle(fontSize: 18, color: Colors.black)),
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.amber,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/card');
                    },
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: paymentOption(
                  const Text('SMS Banking',
                      style: TextStyle(fontSize: 18, color: Colors.black)),
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.amber,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/card');
                    },
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: paymentOption(
                  const Text('Pawnshop',
                      style: TextStyle(fontSize: 18, color: Colors.black)),
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.amber,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/card');
                    },
                  )),
            )
          ],
        ),
      ),
    );
  }

  OutlinedButton paymentOption(Text text, IconButton icon) {
    return OutlinedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          text,
          icon,
        ],
      ),
    );
  }
}
