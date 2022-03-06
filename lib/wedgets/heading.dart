// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  const Heading({required this.headingText});
  final String headingText;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5.0, // soften the shadow
            spreadRadius: 1.0, //extend the shadow
            offset: Offset(
              2.0, // Move to right 10  horizontally
              2.0, // Move to bottom 10 Vertically
            ),
          )
        ],
        color: Colors.grey[300],
      ),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
      margin: const EdgeInsets.only(top: 15, bottom: 10),
      child: Text(
        headingText,
        style: Theme.of(context).textTheme.headline1,
      ),
    );
  }
}
