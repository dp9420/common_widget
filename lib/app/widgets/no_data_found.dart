import 'package:common_widget/app/constants/app_color.dart';
import 'package:common_widget/app/widgets/jio_medium_text.dart';
import 'package:doc_widget/doc_widget.dart';
import 'package:flutter/material.dart';

/// ```dart
/// final noDataFound = NoDataFound();
/// ```
@docWidget
class NoDataFound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        JioTextMediumFont(
          text: "No Data Found",
          textColor: FF265AC2,
          fontSize: 16,
        ),
      ],
    );
  }
}
