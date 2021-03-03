import 'package:common_widget/app/constants/app_color.dart';
import 'package:common_widget/app/widgets/jio_light_text.dart';
import 'package:doc_widget/doc_widget.dart';
import 'package:flutter/material.dart';

/// ```dart
/// final customDropdown = CustomDropDown(
///   height: 48,
///   width: 200,
///   borderRadius: 6,
///   hint: "Select Time",
///   dropdownMenuItemList: buildTimeSlotDropdown(),
///   onChanged: onChangeTimeSlotDropdown,
///   value: timeSlotValue.value,
///   isEnabled: true,
///   fontSize: 16,
///  );
/// ```
@docWidget
class CustomDropDown<T> extends StatelessWidget {
  final List<DropdownMenuItem<T>> dropdownMenuItemList;
  final ValueChanged<T> onChanged;
  final T value;
  final bool isEnabled;
  final double height;
  final double width;
  final String hint;
  final Color borderColor;
  final double borderRadius;
  final double fontSize;

  CustomDropDown(
      {Key key,
      @required this.dropdownMenuItemList,
      @required this.onChanged,
      @required this.value,
      this.isEnabled = true,
      this.hint,
      this.borderColor = Colors.black12,
      this.borderRadius,
      this.height,
      this.width,
      this.fontSize = 12})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isEnabled,
      child: Container(
        height: height,
        width: width,
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
            border: Border.all(
              color: borderColor,
              width: 1,
            ),
            color: isEnabled ? Colors.white : Colors.grey.withAlpha(100)),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            hint: JioTextLightFont(
              text: hint ?? "",
              fontSize: fontSize,
              textColor: FF808080,
            ),
            isExpanded: true,
            itemHeight: 50.0,
            style: TextStyle(
                fontSize: fontSize,
                color: isEnabled ? Colors.black : Colors.grey[700]),
            items: dropdownMenuItemList,
            onChanged: onChanged,
            value: value,
          ),
        ),
      ),
    );
  }
}
