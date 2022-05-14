import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learning/models/user.dart';

Future<List<User>> fetchUsers() async {
  final response = await http.get(Uri.parse(
      'https://627dc598b75a25d3f3ab7c43.mockapi.io/learning/peoplelist'));

  if (response.statusCode == 200) {
    List usersList = jsonDecode(response.body).cast<Map<String, dynamic>>();
    return usersList.map((data) => User.fromJson(data)).toList();
  } else {
    throw Exception('Failed to load users');
  }
}
