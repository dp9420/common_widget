import 'package:doc_widget/doc_widget.dart';
import 'package:flutter/material.dart';

/// ```dart
/// final roundedBorderContainer = RoundedBorderContainer(
///   borderColor: FF404040,
///   borderWidth: 2,
///   borderRadious: 10,
///   height: 200,
///   width: 200,
///   margin: 10,
///   child: Icon(Icons.share, size: 40,),
/// );
/// ```
@docWidget
class RoundedBorderContainer extends StatelessWidget {
  final Widget child;
  final Color borderColor;
  final double borderWidth;
  final double borderRadious;
  final double width;
  final double height;
  final double margin;

  RoundedBorderContainer(
      {this.child,
      this.borderColor,
      this.borderWidth,
      this.borderRadious,
      this.width,
      this.margin = 0,
      this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        margin: EdgeInsets.only(top: margin),
        decoration: BoxDecoration(
            border: Border.all(
              color: borderColor,
              width: borderWidth,
            ),
            borderRadius: BorderRadius.all(Radius.circular(borderRadious))),
        child: child);
  }
}
