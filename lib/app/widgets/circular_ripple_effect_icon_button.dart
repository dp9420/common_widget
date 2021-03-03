import 'package:doc_widget/doc_widget.dart';
import 'package:flutter/material.dart';

/// ```dart
/// final circularRippleEffectIconButton = CircularRippleEffectIconButton(
///  onPressed: () {
///   print("Some Action Goes Here");
///  },
///  icon: Icons.close,
///  iconColor: FF808080
/// );
/// ```
@docWidget
class CircularRippleEffectIconButton extends StatelessWidget {
  final Function onPressed;
  final IconData icon;
  final Color iconColor;

  CircularRippleEffectIconButton({this.onPressed, this.icon, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      clipBehavior: Clip.hardEdge,
      shape: CircleBorder(),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: iconColor,
        ),
      ),
    );
  }
}
