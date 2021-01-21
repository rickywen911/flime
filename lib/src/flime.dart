import 'package:flutter/material.dart';

class Flime extends StatelessWidget {
  final Widget child;

  final Color backgroundColor;

  final double cornerRadius;

  final double width;

  final double height;

  final double blurRadius;

  final Color shadowColor;

  final Offset offset;

  final Function onTap;

  const Flime({
    Key key,
    @required this.child,
    this.backgroundColor = Colors.white,
    this.cornerRadius = 4.0,
    @required this.width,
    @required this.height,
    this.blurRadius = 6.0,
    this.shadowColor = Colors.black12,
    this.offset = const Offset(0, 1),
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (onTap != null) {
      return GestureDetector(
        onTap: onTap,
        child: _buildFlime(),
      );
    } else {
      return _buildFlime();
    }
  }

  Widget _buildFlime() {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(cornerRadius),
          boxShadow: [
            BoxShadow(
              color: shadowColor,
              offset: offset,
              blurRadius: blurRadius,
            )
          ]),
      child: child,
    );
  }
}
