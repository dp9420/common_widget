import 'package:common_widget/app/constants/app_color.dart';
import 'package:doc_widget/doc_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';

/// ```dart
/// final otpField = OTPField(
///   otpController: otpController,
///   length: 6,
/// );
/// ```
@docWidget
class OTPField extends StatelessWidget {
  final TextEditingController otpController;
  final int length;

  OTPField({
    @required this.otpController,
    this.length = 6,
  });

  final FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 240,
      child: PinCodeFields(
        length: length,
        controller: otpController,
        focusNode: focusNode,
        onComplete: (result) {
          otpController.text = result;
        },
        keyboardType: TextInputType.number,
        fieldBorderStyle: FieldBorderStyle.Square,
        fieldHeight: 48,
        fieldWidth: 24,
        borderRadius: BorderRadius.circular(5),
        activeBorderColor: FFDBDBDB,
      ),
    );
  }
}
