import 'package:flutter/material.dart';

class SimpleElevatedButton extends StatelessWidget {
  const SimpleElevatedButton(
      {this.child,
      this.color,
      this.onPressed,
      this.borderRadius = 6,
      this.padding = const EdgeInsets.symmetric(horizontal: 28, vertical: 20),
      Key? key})
      : super(key: key);
  final Color? color;
  final Widget? child;
  final Function? onPressed;
  final double borderRadius;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    ThemeData currentTheme = Theme.of(context);
    return ElevatedButton(
      child: child,
      style: ElevatedButton.styleFrom(
        padding: padding,
        primary: color ?? currentTheme.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      onPressed: onPressed as void Function()?,
    );
  }
}
