import 'package:flutter/material.dart';

class Details extends ChangeNotifier {
  String? name;
  String? profession;
  String? gender;
  String? age;
  String? education;
  Details(
      {@required this.name,
      @required this.age,
      @required this.education,
      @required this.gender,
      @required this.profession});
}
