import 'package:flutter/material.dart';

class data2 {
  late final String image;
  late final String name;

  data2({required this.image, required this.name});
}

List<data2> getdata1 = [
  data2(image: 'assets/ok.png', name: 'Easy Care'),
  data2(image: 'assets/sun.png', name: 'sun-lover'),
  data2(image: 'assets/blood.png', name: 'Frequently'),
];
