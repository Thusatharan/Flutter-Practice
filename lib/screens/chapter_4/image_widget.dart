// ignore_for_file: always_specify_types, public_member_api_docs

import 'package:flutter/material.dart';
import 'package:learning/wedgets/heading.dart';
import 'package:learning/wedgets/subheading.dart';

// ignore: public_member_api_docs
class ImageWidgetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Image Widget'),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.arrow_back_sharp),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const Heading(
                headingText: 'Embedded Images',
              ),
              Container(
                child: Image.asset('assets/images/person.jpg'),
              ),
              const Heading(
                headingText: 'Sizing the image',
              ),
              SubHeading(subheading: 'BoxFit.fill'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    width: 150,
                    height: 300,
                    color: Colors.red,
                    child: Image.asset(
                      'assets/images/person.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    width: 230,
                    height: 150,
                    color: Colors.red,
                    child: Image.asset(
                      'assets/images/person.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
              SubHeading(subheading: 'BoxFit.cover'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    width: 150,
                    height: 300,
                    color: Colors.red,
                    child: Image.asset(
                      'assets/images/person.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: 230,
                    height: 150,
                    color: Colors.red,
                    child: Image.asset(
                      'assets/images/person.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SubHeading(subheading: 'BoxFit.fitHeight'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    width: 150,
                    height: 300,
                    color: Colors.red,
                    child: Image.asset(
                      'assets/images/person.jpg',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Container(
                    width: 230,
                    height: 150,
                    color: Colors.red,
                    child: Image.asset(
                      'assets/images/person.jpg',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ],
              ),
              SubHeading(subheading: 'BoxFit.fitWidth'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    width: 150,
                    height: 300,
                    color: Colors.red,
                    child: Image.asset(
                      'assets/images/person.jpg',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Container(
                    width: 230,
                    height: 150,
                    color: Colors.red,
                    child: Image.asset(
                      'assets/images/person.jpg',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ],
              ),
              SubHeading(subheading: 'BoxFit.contain'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    width: 150,
                    height: 300,
                    color: Colors.red,
                    child: Image.asset(
                      'assets/images/person.jpg',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Container(
                    width: 230,
                    height: 150,
                    color: Colors.red,
                    child: Image.asset(
                      'assets/images/person.jpg',
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
