// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:learning/wedgets/heading.dart';

class InputWidgetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Widget'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_sharp),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 2 / 3,
            child: TextButton(
              onPressed: () => Navigator.pushNamed(context, '/single_input'),
              child: Heading(
                headingText: 'Single Input Widget',
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 2 / 3,
            child: TextButton(
              onPressed: () => Navigator.pushNamed(context, '/full_form'),
              child: Heading(
                headingText: 'Full Form',
              ),
            ),
          ),
        ],
      )),
    );
  }
}
