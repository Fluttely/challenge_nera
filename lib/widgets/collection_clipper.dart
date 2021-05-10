import "package:flutter/material.dart";

class CollectionClipper extends CustomClipper<Path> {
  CollectionClipper({
    this.width,
    this.height,
  });

  final double width;
  final double height;

  @override
  Path getClip(Size size) {
    Path path = new Path();

    path.moveTo(width / 2, height);

    path.lineTo(0, height / 2);

    path.lineTo(width / 2, 0);

    path.lineTo(width, height / 2);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
