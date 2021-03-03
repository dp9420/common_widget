import 'package:common_widget/app/constants/app_color.dart';
import 'package:common_widget/app/widgets/jio_medium_text.dart';
import 'package:doc_widget/doc_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';

/// ```dart
/// final appBar = CustomAppBar(
///   title: "Custom AppBar",
///   isSearchVisible: true,
/// );
/// ```
@docWidget
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  final bool isSearchVisible;
  final Color appBarBackground;
  final Function onSearchClick;

  CustomAppBar(
      {this.text,
      this.isSearchVisible = false,
      this.appBarBackground,
      this.onSearchClick});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: appBarBackground,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios_sharp,
          color: FFFFFFFF,
          size: 18,
        ),
        onPressed: () {
          // Get.back();
        },
      ),
      title: JioTextMediumFont(
        text: text,
        fontSize: 18,
        textColor: FFFFFFFF,
      ),
      actions: [
        isSearchVisible
            ? IconButton(
                icon: Icon(
                  Icons.search,
                  color: FFFFFFFF,
                  size: 26,
                ),
                onPressed: () {
                  onSearchClick?.call();
                })
            : Container(),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56.0);
}
