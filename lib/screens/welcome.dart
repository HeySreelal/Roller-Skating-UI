import 'package:flutter/material.dart';
import 'package:roller_skating/utils/theme.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SkatingTheme.primaryColor,
      body: Center(
        child: Column(
          children: [
            Image.asset(
              "images/skating.png",
              height: MediaQuery.of(context).size.height * 0.65,
            ),
            const SizedBox(height: 30),
            const Text(
              "Roll with it!",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 30),
            const GoButton()
          ],
        ),
      ),
    );
  }
}

class GoButton extends StatelessWidget {
  const GoButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
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
