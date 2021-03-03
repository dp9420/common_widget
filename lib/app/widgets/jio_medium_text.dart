import 'package:common_widget/app/constants/app_font_family.dart';
import 'package:doc_widget/doc_widget.dart';
import 'package:flutter/material.dart';

/// ```dart
/// final jioTextMediumFont = JioTextMediumFont(
///   text: "Same Text",
///   textColor: FF808080,
///   fontSize: 20,
/// );
/// ```
@docWidget
class JioTextMediumFont extends StatelessWidget {
  final String text;
  final TextAlign align;
  final TextOverflow overflow;
  final int maxLines;
  final bool softWrap;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final bool isUpperCase;

  JioTextMediumFont(
      {@required this.text,
      this.align = TextAlign.left,
      this.overflow = TextOverflow.ellipsis,
      this.maxLines = 1,
      this.softWrap = false,
      @required this.textColor,
      @required this.fontSize,
      this.fontWeight = FontWeight.normal,
      this.isUpperCase = false});

  @override
  Widget build(BuildContext context) {
    return Text(
      isUpperCase ? text.toUpperCase() : text,
      textAlign: align,
      overflow: overflow,
      maxLines: maxLines,
      softWrap: softWrap,
      style: TextStyle(
          color: textColor,
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontFamily: FontFamily.jiotypeMedium,
          decoration: TextDecoration.none),
    );
  }
}
