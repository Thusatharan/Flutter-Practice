import 'package:flutter/material.dart';
import 'package:learning/screens/models/home_list_model.dart';

List<HomeList> homelist = <HomeList>[
  HomeList(
    icon: const Icon(
      Icons.picture_in_picture_alt_outlined,
      color: Colors.indigo,
    ),
    title: 'The Image widget',
    subtitle: 'Chapter 4 - Value Widgets',
    routeName: '/image',
  ),
  HomeList(
    icon: const Icon(
      Icons.input_rounded,
      color: Colors.indigo,
    ),
    title: 'Input widgets',
    subtitle: 'Chapter 4 - Value Widgets',
    routeName: '/input',
  ),
];
