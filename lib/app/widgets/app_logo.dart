import 'package:common_widget/app/constants/app_assets.dart';
import 'package:doc_widget/doc_widget.dart';
import 'package:flutter/material.dart';

/// ```dart
///final logoWidget = LogoWidget(
///  width: 100,
///  height: 100,
///  isBackgroundWhite: true,
///);
/// ```
@docWidget
class LogoWidget extends StatelessWidget {
  final double width;
  final double height;
  final bool isBackgroundWhite;

  const LogoWidget({
    Key key,
    this.width,
    this.height = 60,
    this.isBackgroundWhite = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _logo = (isBackgroundWhite ? Assets.ic_logo_black : Assets.ic_logo);
    return SafeArea(
      child: Center(
        child: Image(
          image: AssetImage(_logo),
          fit: BoxFit.contain,
          width: width,
          height: height,
          //fit: BoxFit.contain,
        ),
      ),
    );
  }
}
