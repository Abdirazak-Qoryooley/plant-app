import 'package:flutter/material.dart';

class data {
  late final String image;
  late final String name;
  late final String subtitle;

  data({required this.image, required this.name, required this.subtitle});
}

List<data> getdata = [
  data(
      image: 'assets/aa.png',
      name: 'swise cheese plant',
      subtitle: 'house plant'),
  data(image: 'assets/b.jpg', name: 'swise  plant', subtitle: 'office plant'),
  data(image: 'assets/c.jpg', name: 'cheese  plant', subtitle: 'office plant'),
  data(image: 'assets/d.jpg', name: 'swises  plant', subtitle: 'office plant'),
  data(image: 'assets/e.jpg', name: 'swise  plant', subtitle: 'office plant'),
];
