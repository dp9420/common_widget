import 'package:common_widget/app/constants/app_color.dart';
import 'package:common_widget/app/widgets/jio_medium_text.dart';
import 'package:common_widget/app/widgets/rounded_corner_container.dart';
import 'package:doc_widget/doc_widget.dart';
import 'package:flutter/material.dart';

/// ```dart
/// final customDialogBoxTwoButtons = CustomDialogBoxTwoButtons(
///   title: "Info",
///   body: JioTextMediumFont(
///     text: "This will be the body of our dialog box",
///     textColor: FF404040,
///     fontSize: 18,
///     maxLines: 100,
///   ),
///   radius: 6,
///   closeCallBack: () => print("Close Callback"),
///   buttonText1: "No",
///   buttonCallback1: () => print("No CallBack"),
///   buttonText2: "Yes",
///   buttonCallback2: () => print("Yes CallBack"),
/// );
/// ```
@docWidget
class CustomDialogBoxTwoButtons extends StatelessWidget {
  final String title, buttonText1, buttonText2;
  final double radius;
  final Widget body;
  final Function buttonCallback1;
  final Function buttonCallback2;
  final Function closeCallBack;
  final bool showCloseIcon;

  const CustomDialogBoxTwoButtons({
    Key key,
    this.title = null,
    this.body,
    this.buttonText1,
    this.buttonText2,
    this.radius,
    this.buttonCallback1,
    this.buttonCallback2,
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
                  child: body),
            ),
            buttonText1 != null ? const SizedBox(height: 26) : Container(),
            buttonText1 != null
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          buttonCallback1?.call();
                        },
                        child: Center(
                          child: RoundedCornerContainer(
                            height: 32,
                            radius: 6,
                            width: 110,
                            backgroundColor: FFFFFFFF,
                            borderColor: FF265AC2,
                            child: Center(
                              child: JioTextMediumFont(
                                text: buttonText1,
                                fontSize: 14,
                                textColor: FF265AC2,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      InkWell(
                        onTap: () {
                          buttonCallback2?.call();
                        },
                        child: Center(
                          child: RoundedCornerContainer(
                            height: 32,
                            radius: 6,
                            width: 110,
                            backgroundColor: FF265AC2,
                            borderColor: FF265AC2,
                            child: Center(
                              child: JioTextMediumFont(
                                text: buttonText2,
                                fontSize: 14,
                                textColor: FFFFFFFF,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                : Container(),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
