import 'dart:convert';

class User {
  String userId;
  String name;
  String country;
  String imageUrl;

  User({
    required this.userId,
    required this.name,
    required this.country,
    required this.imageUrl,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      userId: json['id'],
      name: json['name'],
      country: json['country'],
      imageUrl: json['avatar'],
    );
  }
}
