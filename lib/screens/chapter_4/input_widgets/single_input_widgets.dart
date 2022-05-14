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
  double _value = 22.0;

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
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                color: Color(0xff2b2b2b),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Center(
                    child: Text(
                      _screenText,
                      style: const TextStyle(
                          color: Color(0xff12ff16),
                          fontSize: 23,
                          fontFamily: 'Orbitron'),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Text(
                              _value.round().toString(),
                              style: TextStyle(
                                fontSize: 25,
                                color: (_value >= 50)
                                    ? const Color(0xffff1f1f)
                                    : const Color(0xff12ff16),
                              ),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Icon(Icons.dangerous_outlined,
                                color: (_value >= 50)
                                    ? const Color(0xffff1f1f)
                                    : const Color(0xff525252)),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              'High',
                              style: TextStyle(
                                  color: (_value >= 75)
                                      ? const Color(0xffff1f1f)
                                      : const Color(0xff525252)),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Text(
                          'Asian Server',
                          style: TextStyle(
                              color: (connection == Communication.sattelite)
                                  ? const Color(0xff12ff16)
                                  : const Color(0xff525252)),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Anonymouse',
                        style: TextStyle(
                            color: _checkBoxValue
                                ? const Color(0xff12ff16)
                                : const Color(0xff525252)),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text(
                              'Sattelite',
                              style: TextStyle(
                                  color: (connection == Communication.sattelite)
                                      ? const Color(0xff12ff16)
                                      : const Color(0xff525252)),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Wifi',
                              style: TextStyle(
                                  color: (connection == Communication.wifi)
                                      ? const Color(0xff12ff16)
                                      : const Color(0xff525252)),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Mobile Data',
                              style: TextStyle(
                                  color:
                                      (connection == Communication.mobile_data)
                                          ? const Color(0xff12ff16)
                                          : const Color(0xff525252)),
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
              margin: const EdgeInsets.all(20),
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
                  SubHeading(subheading: 'Slider'),
                  Slider(
                    label: _value.round().toString(),
                    min: 0,
                    max: 100,
                    divisions: 100,
                    value: _value,
                    onChanged: (double val) {
                      setState(() {
                        _value = val;
                      });
                    },
                  )
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
