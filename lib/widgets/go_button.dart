import 'package:flutter/material.dart';
import 'package:roller_skating/screens/home.dart';
import 'package:roller_skating/utils/slide.dart';
import 'package:roller_skating/utils/theme.dart';

class GoButton extends StatelessWidget {
  const GoButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushReplacement(context, slidingRoute(const Home()));
      },
      child: const Text(
        "Go",
        style: TextStyle(fontSize: 20),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith(
          (states) => SkatingTheme.white,
        ),
        foregroundColor: MaterialStateProperty.resolveWith(
          (states) => SkatingTheme.primaryColor,
        ),
        shape: MaterialStateProperty.resolveWith(
          (states) => const CircleBorder(),
        ),
        padding: MaterialStateProperty.resolveWith(
          (states) => const EdgeInsets.all(25),
        ),
      ),
    );
  }
}
