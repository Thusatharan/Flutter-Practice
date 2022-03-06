// ignore_for_file: public_member_api_docs

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeList {
  HomeList(
      {required this.icon,
      required this.title,
      required this.subtitle,
      required this.routeName});

  final Widget icon;
  final String title;
  final String subtitle;
  final String routeName;
}
