import 'package:flutter/material.dart';

class FlimeContainer extends StatelessWidget {
  const FlimeContainer({
    Key key,
    @required this.child,
    this.backgroundColor = Colors.white,
    this.cornerRadius = 8.0,
    this.width,
    this.height,
    this.blurRadius = 8.0,
    this.shadowColor = Colors.black12,
    this.offset = const Offset(0, 1),
    this.onTap,
  }) : super(key: key);

  ///
  /// child widget
  ///
  final Widget child;

  ///
  /// Background color of Flime
  /// default is `Colors.white`
  ///
  final Color backgroundColor;

  ///
  /// corner radius
  /// default is `4.0`
  ///
  final double cornerRadius;

  ///
  /// width of Flime
  ///
  final double width;

  ///
  /// height of Flime
  ///
  final double height;

  ///
  /// blur radius of shadow
  /// default is `6.0`
  ///
  final double blurRadius;

  ///
  /// color of shadow
  /// default is `Colors.black12`
  ///
  final Color shadowColor;

  ///
  /// offset of the shadow
  /// default is `Offset(0,1)`
  ///
  final Offset offset;

  ///
  /// onTap listener
  ///
  final Function onTap;

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

class FlimeTextField extends StatelessWidget {
  const FlimeTextField({
    Key key,
    this.backgroundColor = Colors.white,
    this.cornerRadius = 8.0,
    this.width,
    this.height = 50,
    this.blurRadius = 8.0,
    this.shadowColor = Colors.black12,
    this.offset = const Offset(0, 1),
    this.inputDecoration = const InputDecoration(
      border: InputBorder.none,
    ),
    this.cursorColor = Colors.grey,
    this.textInputType,
    this.textStyle = const TextStyle(
      color: Colors.black45,
    ),
    this.controller,
  }) : super(key: key);

  ///
  /// Background color of Flime
  /// default is `Colors.white`
  ///
  final Color backgroundColor;

  ///
  /// corner radius
  /// default is `4.0`
  ///
  final double cornerRadius;

  ///
  /// width of Flime
  ///
  final double width;

  ///
  /// height of Flime
  ///
  final double height;

  ///
  /// blur radius of shadow
  /// default is `6.0`
  ///
  final double blurRadius;

  ///
  /// color of shadow
  /// default is `Colors.black12`
  ///
  final Color shadowColor;

  ///
  /// offset of the shadow
  /// default is `Offset(0,1)`
  ///
  final Offset offset;

  final InputDecoration inputDecoration;

  final Color cursorColor;

  final TextInputType textInputType;

  final TextStyle textStyle;

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    InputDecoration decoration = inputDecoration.copyWith(
      border: InputBorder.none,
      focusedBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      enabledBorder: InputBorder.none,
    );

    return FlimeContainer(
      backgroundColor: backgroundColor,
      cornerRadius: cornerRadius,
      width: width,
      height: height,
      blurRadius: blurRadius,
      shadowColor: shadowColor,
      offset: offset,
      child: Padding(
        padding: EdgeInsets.all(4),
        child: TextField(
          controller: controller,
          style: textStyle,
          cursorColor: cursorColor,
          keyboardType: textInputType,
          decoration: decoration,
        ),
      ),
    );
  }
}
