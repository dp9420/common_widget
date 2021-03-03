import 'package:common_widget/app/constants/app_assets.dart';
import 'package:common_widget/app/constants/app_color.dart';
import 'package:common_widget/app/widgets/jio_bold_text.dart';
import 'package:doc_widget/doc_widget.dart';
import 'package:flutter/material.dart';

/// ```dart
/// final noDataFoundWidget = NoDataFoundWidget(
///   height: 150,
///   width: 150,
///   title: "Sorry No Data Found",
/// );
/// ```
@docWidget
class NoDataFoundWidget extends StatelessWidget {
  final double height;
  final double width;
  final IconData icon;
  final String customImage;
  final String title;

  NoDataFoundWidget({
    this.height = 100,
    this.width = 100,
    this.icon,
    this.title,
    this.customImage,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            (customImage != null || icon != null)
                ? customImage != null
                    ? Image.asset(
                        customImage,
                        width: width,
                        height: height,
                      )
                    : Icon(
                        icon,
                        size: height,
                      )
                : Image.asset(
                    Assets.ic_no_data_found,
                    width: width,
                    height: height,
                  ),
            const SizedBox(
              height: 10,
            ),
            JioTextBoldFont(
              text: title ?? "No Data Found",
              textColor: FF808080,
              fontSize: 20,
            ),
          ],
        ),
      ),
    );
  }
}
