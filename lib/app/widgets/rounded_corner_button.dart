import 'package:common_widget/app/widgets/jio_medium_text.dart';
import 'package:doc_widget/doc_widget.dart';
import 'package:flutter/material.dart';

/// ```dart
/// final roundedCornerButton = RoundedCornerButton(
///   iconData: Icons.share,
///   buttonText: "Share",
///   onPressed: () {
///     // onPressed Callback
///   },
///   buttonColor: FF265AC2,
///   iconAndTextColor: FFFFFFFF,
///   borderColor: FF265AC2,
/// );
/// ```
@docWidget
class RoundedCornerButton extends StatelessWidget {
  final IconData iconData;
  final String buttonText;
  final Function onPressed;
  final Color buttonColor;
  final Color iconAndTextColor;
  final Color borderColor;
  final double width;
  final double height;
  final double iconSize;
  final double radius;
  final double fontSize;
  final bool enableButton;

  RoundedCornerButton({
    @required this.iconData,
    @required this.buttonText,
    @required this.onPressed,
    @required this.buttonColor,
    @required this.iconAndTextColor,
    @required this.borderColor,
    this.width,
    this.height = 32,
    this.iconSize = 14,
    this.radius = 5,
    this.fontSize = 18,
    this.enableButton = true,
  });

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      child: Container(
        width: width,
        height: height,
        alignment: Alignment.center,
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: buttonColor,
          border: Border.all(width: 1.0, color: borderColor),
          borderRadius: BorderRadius.circular(radius),
        ),
        child: iconData != null
            ? Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(iconData, color: iconAndTextColor, size: iconSize),
                    SizedBox(width: 5),
                    JioTextMediumFont(
                      text: buttonText,
                      fontSize: fontSize,
                      textColor: iconAndTextColor,
                    ),
                  ],
                ),
              )
            : JioTextMediumFont(
                text: buttonText,
                fontSize: fontSize,
                textColor: iconAndTextColor,
              ),
      ),
    );
  }
}
