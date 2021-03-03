import 'package:common_widget/app/constants/app_color.dart';
import 'package:common_widget/app/widgets/jio_medium_text.dart';
import 'package:common_widget/app/widgets/rounded_corner_container.dart';
import 'package:doc_widget/doc_widget.dart';
import 'package:flutter/material.dart';

/// ```dart
/// final customDialogBoxSingleButton = CustomDialogBoxSingleButton(
///  title: "Info",
///  body: JioTextMediumFont(
///    text: "This will be the body of our dialog box",
///    textColor: FF404040,
///    fontSize: 18,
///    maxLines: 100,
///    ),
///  radius: 6,
///  closeCallBack: () {
///    // close callback here
///  },
///  buttonText: "Submit",
///  yesCallBack: () {
///    // response of the submit button
///   },
/// );
/// ```
@docWidget
class CustomDialogBoxSingleButton extends StatelessWidget {
  final String title, buttonText;
  final double radius;
  final Widget body;
  final Function yesCallBack;
  final Function closeCallBack;
  final bool showCloseIcon;

  const CustomDialogBoxSingleButton({
    Key key,
    this.title,
    @required this.body,
    this.buttonText,
    this.radius,
    this.yesCallBack,
    this.closeCallBack,
    this.showCloseIcon = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  Widget contentBox(BuildContext context) {
    return SingleChildScrollView(
      child: RoundedCornerContainer(
        radius: 8,
        backgroundColor: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                title != null
                    ? Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 14.0, top: 14.0),
                          child: JioTextMediumFont(
                            text: title,
                            textColor: FF404040,
                            fontSize: 20,
                          ),
                        ),
                      )
                    : Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(left: 14.0, top: 14.0),
                        ),
                      ),
                showCloseIcon
                    ? InkWell(
                        onTap: () {
                          closeCallBack?.call();
                        },
                        child: Padding(
                          padding:
                              const EdgeInsets.only(right: 14.0, top: 14.0),
                          child: Center(
                            child: Icon(Icons.close),
                          ),
                        ),
                      )
                    : Container(),
              ],
            ),
            title != null ? const SizedBox(height: 16) : Container(),
            title != null
                ? Divider(
                    color: Colors.black,
                    thickness: 0.2,
                    height: 0,
                  )
                : Container(),
            title != null ? const SizedBox(height: 8) : Container(),
            Center(
              child: Padding(
                padding: title != null && showCloseIcon
                    ? const EdgeInsets.only(
                        left: 12.0,
                        right: 12.0,
                        bottom: 12.0,
                      )
                    : const EdgeInsets.all(20),
                child: body,
              ),
            ),
            buttonText != null ? const SizedBox(height: 26) : Container(),
            buttonText != null
                ? InkWell(
                    onTap: () {
                      yesCallBack?.call();
                    },
                    child: Center(
                      child: RoundedCornerContainer(
                        height: 40,
                        radius: 6,
                        width: 200,
                        backgroundColor: FF315CBB,
                        child: Center(
                          child: JioTextMediumFont(
                            text: buttonText,
                            fontSize: 18,
                            textColor: FFFFFFFF,
                          ),
                        ),
                      ),
                    ),
                  )
                : Container(),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
