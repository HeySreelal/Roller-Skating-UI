import 'package:flutter/material.dart';
import 'package:roller_skating/utils/theme.dart';

class Skater {
  String image;
  String name;
  double price;
  Color background;

  Skater({
    required this.image,
    required this.name,
    required this.price,
    required this.background,
  });

  static List<Skater> get list => [
        Skater(
          image: "shoe1.png",
          name: "orange & black\nroller skating",
          price: 15.0,
          background: SkatingTheme.purple,
        ),
        Skater(
          image: "shoe2.png",
          name: "pink & brown\nroller skating",
          price: 12.0,
          background: SkatingTheme.orange,
        ),
      ];
}
