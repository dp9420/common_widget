import 'package:common_widget/app/constants/app_assets.dart';
import 'package:common_widget/app/constants/app_color.dart';
import 'package:common_widget/app/widgets/jio_bold_text.dart';
import 'package:doc_widget/doc_widget.dart';
import 'package:flutter/material.dart';

enum ErrorType {
  noInternetConnectivity,
  errorLoadingPage,
  customError,
}

/// ```dart
///final customError = CustomError(
///  errorType: ErrorType.customError,
///  retryCallback: () {
///     print("Retry");
///  },
///  showRetry: true,
///);
/// ```

@docWidget
class CustomError extends StatelessWidget {
  final ErrorType errorType;
  final String customImage;
  final double height;
  final double width;
  final String title;
  final IconData icon;
  final bool isIcon;
  final bool showRetry;
  final Function retryCallback;
  final IconData retryIcon;

  CustomError({
    @required this.errorType,
    this.isIcon = false,
    this.title,
    this.customImage,
    this.icon,
    this.height = 150,
    this.width = 150,
    this.showRetry = false,
    this.retryCallback,
    this.retryIcon = Icons.refresh,
  });

  String _image;
  String _heading;

  @override
  Widget build(BuildContext context) {
    if (customImage != null) {
      _image = customImage;
    } else {
      switch (errorType) {
        case ErrorType.noInternetConnectivity:
          _image = Assets.ic_no_internet_connectivity;
          _heading = "No Internet Connection!";
          break;
        case ErrorType.errorLoadingPage:
          _image = Assets.ic_error_loading_page;
          _heading = "Error Loading Page!";
          break;
        case ErrorType.customError:
          _image = Assets.ic_something_went_wrong;
          _heading = "Something went wrong!";
          break;
      }
    }
    _heading = title ?? "Error";
    return Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            isIcon
                ? Icon(
                    icon,
                    size: height,
                  )
                : Image.asset(
                    _image,
                    height: height,
                    width: width,
                  ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                JioTextBoldFont(
                  text: _heading,
                  fontSize: 20,
                  maxLines: 3,
                  textColor: FF808080,
                ),
                showRetry
                    ? IconButton(
                        icon: Icon(retryIcon),
                        iconSize: 28,
                        onPressed: retryCallback,
                        splashRadius: 0.1,
                        splashColor: Colors.transparent,
                      )
                    : Container(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
