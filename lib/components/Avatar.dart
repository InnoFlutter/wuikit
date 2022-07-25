import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar(
      {this.imageUrl = '',
      this.label = '',
      this.radius = 36.0,
      this.onPressed,
      Key? key})
      : super(key: key);

  final String imageUrl;
  final String label;
  final double radius;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPressed,
        child: CircleAvatar(
          radius: radius,
          backgroundImage: imageUrl.length > 0 ? NetworkImage(imageUrl) : null,
          child: Text(label),
        ));
  }
}
