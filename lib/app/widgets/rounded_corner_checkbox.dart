import 'package:common_widget/app/constants/app_color.dart';
import 'package:common_widget/app/widgets/rounded_corner_container.dart';
import 'package:doc_widget/doc_widget.dart';
import 'package:flutter/material.dart';

/// ```dart
/// final roundedCornerCheckbox = RoundedCornerCheckbox(
///   value: value,
///   onChanged: (newValue) {
///     // change the value which holds the value of checkbox
///   },
///   height: 40,
///   width: 40,
/// );
/// ```
@docWidget
class RoundedCornerCheckbox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final double height;
  final double width;

  RoundedCornerCheckbox({
    @required this.value,
    @required this.onChanged,
    this.height = 30,
    this.width = 30,
  });

  @override
  Widget build(BuildContext context) {
    return RoundedCornerContainer(
      child: Theme(
        child: Checkbox(
          value: value,
          onChanged: onChanged,
          activeColor: Colors.transparent,
        ),
        data: ThemeData(
          unselectedWidgetColor: Colors.transparent, // Your color
        ),
      ),
      height: 30,
      width: 30,
      radius: 5.0,
      backgroundColor: value ? FF265AC2 : FFFFFFFF,
      borderColor: value ? FF265AC2 : FF767B87,
      borderWidth: 1.5,
    );
  }
}
