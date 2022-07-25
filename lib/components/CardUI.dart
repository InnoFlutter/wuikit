import 'package:flutter/material.dart';

class CardUI extends StatelessWidget {
  const CardUI({
    required this.child,
    this.backgroundColor = Colors.white,
    this.elevation = 2,
    this.shadowColor = Colors.black,
    this.shadowBlur = 2,
    this.borderRadius = BorderRadius.zero,
    this.shadowOffset = Offset.zero,
    this.height = 300,
    this.width = 500,
    this.padding = 16,
    Key? key,
  }) : super(key: key);

  final Widget child;
  final Color backgroundColor;
  final double elevation;
  final Color shadowColor;
  final double shadowBlur;
  final BorderRadius borderRadius;
  final Offset shadowOffset;
  final double height;
  final double width;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: width,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: borderRadius,
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            blurRadius: shadowBlur,
            offset: shadowOffset,
          ),
        ],
      ),
      child: child,
    );
  }
}
