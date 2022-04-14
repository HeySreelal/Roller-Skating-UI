import 'package:flutter/material.dart';
import 'package:roller_skating/utils/theme.dart';

class SkatingIconButton extends StatelessWidget {
  final Widget child;
  const SkatingIconButton({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: child,
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.resolveWith(
          (states) => SkatingTheme.primaryColor.withOpacity(0.1),
        ),
        foregroundColor: MaterialStateProperty.resolveWith(
          (states) => SkatingTheme.black,
        ),
      ),
    );
  }
}
