import 'package:doc_widget/doc_widget.dart';
import 'package:flutter/material.dart';

/// ```dart
/// final roundedCornerContainer = RoundedCornerContainer(
///   height: 250,
///   width: 250,
///   backgroundColor: FF265AC2,
///   radius: 10,
///   child: Icon(Icons.done,),
/// );
/// ```
@docWidget
class RoundedCornerContainer extends StatelessWidget {
  final double height;
  final double width;
  final Color backgroundColor;
  final double radius;
  final Widget child;
  final double leftMargin;
  final double rightMargin;
  final double topMargin;
  final double bottomMargin;
  final double elevation;
  final Color borderColor;
  final double borderWidth;
  RoundedCornerContainer(
      {this.height,
      this.borderColor = const Color(0x00ffffff),
      this.borderWidth = 0.0,
      this.width,
      this.backgroundColor,
      this.radius = 0.0,
      this.child,
      this.elevation = 0.0,
      this.leftMargin = 0.0,
      this.rightMargin = 0.0,
      this.topMargin = 0.0,
      this.bottomMargin = 0.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: child,
      margin: EdgeInsets.only(
          left: leftMargin,
          right: rightMargin,
          top: topMargin,
          bottom: bottomMargin),
      decoration: BoxDecoration(
          border: Border.all(
            color: borderColor,
            width: borderWidth,
          ),
          color: backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(radius))),
    );
  }
}
