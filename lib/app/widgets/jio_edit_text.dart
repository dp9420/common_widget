import 'package:common_widget/app/constants/app_color.dart';
import 'package:common_widget/app/constants/app_font_family.dart';
import 'package:doc_widget/doc_widget.dart';
import 'package:flutter/material.dart';

/// ```dart
/// final jioEditText = JioEditText(
///   height: 48,
///   width: Get.width - 20,
///   controller: editingController,
///   lableText: "Lable",
///   labelFontSize: 16,
/// );
/// ```
@docWidget
class JioEditText extends StatelessWidget {
  TextEditingController controller;
  double width;
  double height;
  int maxLength;
  bool obscure;
  double topMargin;
  double leftMargin;
  double rightMargin;
  double leftpadding;
  double bottomPadding;
  double topTextPadding;
  double bottomTextPadding;
  Function onChanged;
  FocusNode focusNode;
  Function onFieldSubmitted;
  Function validator;
  Function validation;
  bool enable;
  bool autofocus;
  double fontSize;
  Widget prefixIcon;
  Widget suffixIcon;
  TextAlign textAlign;
  TextAlignVertical textAlignVertical;
  AutovalidateMode autovalidateMode;
  TextInputType inputType;
  String lableText;
  double labelFontSize;
  Color borderColor;
  int maxLines;
  JioEditText({
    this.controller,
    this.height = 48,
    this.width,
    this.maxLength,
    this.obscure = false,
    this.topMargin = 0,
    this.leftMargin = 0,
    this.rightMargin = 0,
    this.leftpadding = 0,
    this.bottomPadding = 0,
    this.topTextPadding = 14,
    this.bottomTextPadding = 14,
    this.onChanged,
    this.focusNode,
    this.onFieldSubmitted,
    this.validator,
    this.validation,
    this.enable = true,
    this.autofocus = false,
    this.fontSize = 16,
    this.prefixIcon,
    this.suffixIcon,
    this.textAlign = TextAlign.left,
    this.textAlignVertical = TextAlignVertical.center,
    this.autovalidateMode,
    this.inputType,
    this.lableText,
    this.labelFontSize = 16,
    this.borderColor,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        margin: EdgeInsets.only(
            top: topMargin, left: leftMargin, right: rightMargin),
        padding: enable
            ? EdgeInsets.only(
                left: leftpadding, right: 0, bottom: bottomPadding)
            : EdgeInsets.only(
                left: leftpadding, right: 0, bottom: bottomPadding),
        child: Container(
          child: TextFormField(
            key: key,
            maxLength: maxLength,
            controller: controller,
            keyboardType: inputType,
            obscureText: obscure,
            expands: false,
            textAlign: textAlign,
            textAlignVertical: textAlignVertical,
            style: TextStyle(
                color: FF808080,
                fontSize: fontSize,
                fontFamily: 'JioType Medium'),
            decoration: getLoginInputDecoration(
              lableText,
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
              enabled: enable,
              topTextPadding: topTextPadding,
              bottomTextPadding: bottomTextPadding,
              labelFontSize: labelFontSize,
            ),
            onChanged: onChanged,
            autofocus: autofocus,
            onFieldSubmitted: onFieldSubmitted,
            validator: validator,
            autovalidateMode: autovalidateMode,
            maxLines: maxLines,
          ),
        ),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          color: Colors.white,
        ));
  }

  InputDecoration getLoginInputDecoration(String labelText,
      {bool alignLabelWithHint = false,
      Widget prefixIcon,
      Widget suffixIcon,
      bool enabled = true,
      double leftTextPadding: 15,
      double rightTextPadding: 15,
      double topTextPadding,
      double bottomTextPadding,
      double labelFontSize: 16}) {
    return InputDecoration(
      contentPadding: EdgeInsets.fromLTRB(
          leftTextPadding, topTextPadding, rightTextPadding, bottomTextPadding),
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      counterText: "",
      //labelText: labelText,
      hintText: labelText,
      hintStyle: TextStyle(
          color: FF808080,
          fontSize: labelFontSize,
          fontFamily: FontFamily.jiotypeMedium),
      labelStyle: TextStyle(color: FF808080, fontSize: 14),
      border: InputBorder.none,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        borderSide: BorderSide(color: FFDBDBDB, width: 1.0),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        borderSide: BorderSide(color: FFDBDBDB, width: 1.0),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        borderSide: BorderSide(color: FFDBDBDB, width: 1.0),
      ),
      errorBorder: InputBorder.none,
      enabled: enabled,
      alignLabelWithHint: alignLabelWithHint,
      //disabledBorder: InputBorder.none,
    );
  }
}
