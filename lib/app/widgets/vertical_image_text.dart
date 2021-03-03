import 'package:common_widget/app/constants/app_color.dart';
import 'package:common_widget/app/widgets/jio_medium_text.dart';
import 'package:doc_widget/doc_widget.dart';
import 'package:flutter/material.dart';

/// ```dart
/// final verticalImageText = VerticalImageText(
///   imageName: Assets.ic_logo_black,
///   imageHeight: 100,
///   imageWidth: 100,
///   text: "Reliance Township",
///   textColor: FF265AC2,
///   textSize: 16,
/// );
/// ```
@docWidget
class VerticalImageText extends StatelessWidget {
  final String imageName;
  final double imageHeight;
  final double imageWidth;
  final String text;
  final Color textColor;
  final double textSize;
  final bool isNetworkImage;
  final String iconURL;
  final bool isIconData;
  final IconData icon;

  VerticalImageText({
    this.iconURL = 'http://openweathermap.org/img/w/10d.png',
    this.icon = Icons.ac_unit_sharp,
    this.isIconData = false,
    this.isNetworkImage = false,
    this.imageName,
    this.imageHeight,
    this.imageWidth,
    @required this.text,
    @required this.textColor,
    @required this.textSize,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        displayIcon(),
        isNetworkImage
            ? SizedBox(
                height: 5,
              )
            : (isIconData ? SizedBox(height: 10) : SizedBox(height: 5)),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: JioTextMediumFont(
            text: text,
            textColor: textColor,
            fontSize: textSize,
            isUpperCase: true,
            maxLines: 2,
            align: TextAlign.center,
          ),
        )
      ],
    );
  }

  Widget displayIcon() {
    if (isIconData)
      return Icon(
        icon,
        color: FFFFFFFF,
      );
    else
      return isNetworkImage
          ? Image.network(
              iconURL,
              width: imageWidth,
              height: imageHeight,
            )
          : Image.asset(
              imageName,
              width: imageWidth,
              height: imageHeight,
            );
  }
}
