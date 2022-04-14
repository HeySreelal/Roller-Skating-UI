import 'package:flutter/material.dart';
import 'package:roller_skating/utils/theme.dart';
import 'package:roller_skating/widgets/go_button.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SkatingTheme.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
            const GoButton(),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
