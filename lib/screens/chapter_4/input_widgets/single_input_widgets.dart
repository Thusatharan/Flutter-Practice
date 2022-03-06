// ignore_for_file: public_member_api_docs, always_specify_types

import 'package:flutter/material.dart';
import 'package:learning/wedgets/subheading.dart';

class SingleInputScreen extends StatefulWidget {
  @override
  State<SingleInputScreen> createState() => _SingleInputScreenState();
}

class _SingleInputScreenState extends State<SingleInputScreen> {
  TextEditingController _textController = TextEditingController();
  String _screenText = 'Hacking Started..';
  bool _checkBoxValue = false;
  Communication connection = Communication.sattelite;

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_sharp),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Center(
                    child: Text(
                      _screenText,
                      style: const TextStyle(
                          color: Color(0xff12ff16),
                          fontSize: 30,
                          fontFamily: 'Orbitron'),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Anonymouse',
                        style: TextStyle(
                            color: (_checkBoxValue)
                                ? Color(0xff12ff16)
                                : Color(0xff525252)),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text(
                              'Sattelite',
                              style: TextStyle(
                                  color: (connection == Communication.sattelite)
                                      ? Color(0xff12ff16)
                                      : Color(0xff525252)),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Wifi',
                              style: TextStyle(
                                  color: (connection == Communication.wifi)
                                      ? Color(0xff12ff16)
                                      : Color(0xff525252)),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Mobile Data',
                              style: TextStyle(
                                  color:
                                      (connection == Communication.mobile_data)
                                          ? Color(0xff12ff16)
                                          : Color(0xff525252)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  SubHeading(subheading: 'Text Field'),
                  TextField(
                    controller: _textController,
                    decoration: const InputDecoration(
                        labelText: 'Enter Text',
                        hintText: 'The Text will display on screen',
                        icon: Icon(Icons.text_fields)),
                    onChanged: (String text) {
                      setState(() {
                        _screenText = text;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SubHeading(subheading: 'Checkbox'),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text('Enable Anonymouse? '),
                      ),
                      Checkbox(
                          value: _checkBoxValue,
                          onChanged: (bool? val) {
                            if (val != null) {
                              setState(() {
                                _checkBoxValue = val;
                              });
                            }
                          }),
                    ],
                  ),
                  SubHeading(subheading: 'Radio Buttons'),
                  ListTile(
                    title: const Text('Sattelite'),
                    leading: Radio(
                        value: Communication.sattelite,
                        groupValue: connection,
                        onChanged: (Communication? val) {
                          setState(() {
                            if (val != null) {
                              connection = val;
                            }
                          });
                        }),
                  ),
                  ListTile(
                    title: const Text('Wifi'),
                    leading: Radio(
                        value: Communication.wifi,
                        groupValue: connection,
                        onChanged: (Communication? val) {
                          setState(() {
                            if (val != null) {
                              connection = val;
                              print(connection);
                            }
                          });
                        }),
                  ),
                  ListTile(
                    title: const Text('Mobile Data'),
                    leading: Radio(
                        value: Communication.mobile_data,
                        groupValue: connection,
                        onChanged: (Communication? val) {
                          setState(() {
                            if (val != null) {
                              connection = val;
                            }
                          });
                        }),
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

enum Communication { sattelite, wifi, mobile_data }
