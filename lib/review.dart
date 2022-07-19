import 'package:flutter/material.dart';

import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

class Review extends StatefulWidget {
  const Review({Key? key}) : super(key: key);

  @override
  State<Review> createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  @override
  Widget build(BuildContext context) {
    var rating = 0.0;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Reviews',
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              userReviews(rating),
              userReviews(rating),
              userReviews(rating),
              userReviews(rating),
              userReviews(rating),
              userReviews(rating),
              userReviews(rating),
              userReviews(rating),
              userReviews(rating),
            ],
          ),
        ),
      ),
    );
  }

  Card userReviews(double rating) {
    return Card(
      child: Column(
        children: [
          Row(
            children: [
              const Icon(
                Icons.person,
                size: 80,
              ),
              Column(
                children: [
                  const Text(
                    'User Name',
                    style: TextStyle(fontSize: 25),
                  ),
                  SmoothStarRating(
                      allowHalfRating: true,
                      onRatingChanged: (value) {
                        setState(() {
                          rating = value;
                        });
                      },
                      starCount: 5,
                      rating: rating,
                      size: 20.0,
                      filledIconData: Icons.star,
                      halfFilledIconData: Icons.star_half,
                      defaultIconData: Icons.star_border,
                      color: Colors.amber,
                      borderColor: Colors.grey,
                      spacing: 3.0),
                ],
              ),
            ],
          ),
          const Divider(
            indent: 10,
            endIndent: 10,
            thickness: 2,
            color: Colors.grey,
          ),
          Column(
            children: const [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                    "The product is comfortable good quality and good finishing"),
              )
            ],
          )
        ],
      ),
    );
  }
}
