import 'package:flutter/material.dart';

class SubHeading extends StatelessWidget {
  SubHeading({required this.subheading});

  final String subheading;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.only(left: 15),
      padding: EdgeInsets.all(5),
      child: Text(
        subheading,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
