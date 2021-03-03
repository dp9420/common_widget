import 'package:common_widget/app/constants/app_color.dart';
import 'package:common_widget/app/controller/custom_dropdown_controller.dart';
import 'package:common_widget/app/controller/rounded_corner_checkbox_controller.dart';
import 'package:common_widget/app/widgets/app_logo.dart';
import 'package:common_widget/app/widgets/app_logo.doc_widget.dart';
import 'package:common_widget/app/widgets/attachment_view.dart';
import 'package:common_widget/app/widgets/attachment_view.doc_widget.dart';
import 'package:common_widget/app/widgets/circular_loader.dart';
import 'package:common_widget/app/widgets/circular_ripple_effect_icon_button.dart';
import 'package:common_widget/app/widgets/custom_app_bar.dart';
import 'package:common_widget/app/widgets/custom_dialogbox_two_buttons.dart';
import 'package:common_widget/app/widgets/custom_dropdown.dart';
import 'package:common_widget/app/widgets/custom_error.doc_widget.dart';
import 'package:common_widget/app/widgets/circular_loader.doc_widget.dart';
import 'package:common_widget/app/widgets/circular_ripple_effect_icon_button.doc_widget.dart';
import 'package:common_widget/app/widgets/custom_app_bar.doc_widget.dart';
import 'package:common_widget/app/widgets/custom_dailogbox_single_button.doc_widget.dart';
import 'package:common_widget/app/widgets/custom_dialogbox_two_buttons.doc_widget.dart';
import 'package:common_widget/app/widgets/custom_dropdown.doc_widget.dart';
import 'package:common_widget/app/widgets/horizontal_image_text.doc_widget.dart';
import 'package:common_widget/app/widgets/image_view.doc_widget.dart';
import 'package:common_widget/app/widgets/jio_helvetica_medium_text.doc_widget.dart';
import 'package:common_widget/app/widgets/jio_date_picker.doc_widget.dart';
import 'package:common_widget/app/widgets/jio_edit_text.doc_widget.dart';
import 'package:common_widget/app/widgets/jio_bold_text.doc_widget.dart';
import 'package:common_widget/app/widgets/jio_light_text.doc_widget.dart';
import 'package:common_widget/app/widgets/jio_medium_text.dart';
import 'package:common_widget/app/widgets/jio_medium_text.doc_widget.dart';
import 'package:common_widget/app/widgets/no_data_found.doc_widget.dart';
import 'package:common_widget/app/widgets/no_data_found_widget.doc_widget.dart';
import 'package:common_widget/app/widgets/vertical_image_text.doc_widget.dart';
import 'package:common_widget/app/widgets/otp_field.doc_widget.dart';
import 'package:common_widget/app/widgets/rounded_border_container.doc_widget.dart';
import 'package:common_widget/app/widgets/rounded_corner_button.doc_widget.dart';
import 'package:common_widget/app/widgets/rounded_corner_checkbox.doc_widget.dart';
import 'package:common_widget/app/widgets/rounded_corner_container.doc_widget.dart';
import 'package:common_widget/app/widgets/horizontal_image_text.dart';
import 'package:common_widget/app/widgets/image_view.dart';
import 'package:common_widget/app/widgets/jio_bold_text.dart';
import 'package:common_widget/app/widgets/jio_date_picker.dart';
import 'package:common_widget/app/widgets/jio_edit_text.dart';
import 'package:common_widget/app/widgets/jio_helvetica_medium_text.dart';
import 'package:common_widget/app/widgets/jio_light_text.dart';
import 'package:common_widget/app/widgets/no_data_found.dart';
import 'package:common_widget/app/widgets/no_data_found_widget.dart';
import 'package:common_widget/app/widgets/otp_field.dart';
import 'package:common_widget/app/widgets/rounded_border_container.dart';
import 'package:common_widget/app/widgets/rounded_corner_button.dart';
import 'package:common_widget/app/widgets/rounded_corner_checkbox.dart';
import 'package:common_widget/app/widgets/rounded_corner_container.dart';
import 'package:common_widget/app/widgets/vertical_image_text.dart';
import 'package:common_widget/app/widgets/weekly_list.dart';
import 'package:common_widget/app/widgets/weekly_list.doc_widget.dart';
import 'package:common_widget/app/widgets/custom_error.dart';
import 'package:common_widget/app/widgets/custom_dailogbox_single_button.dart';
import 'package:doc_widget/doc_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/constants/app_assets.dart';

void main() {
  TextEditingController editingController = new TextEditingController();
  TextEditingController outputDateController = new TextEditingController();
  TextEditingController otpController = new TextEditingController();

  CustomDropdownController customDropdownController =
      CustomDropdownController();

  RoundedCornerCheckboxController roundedCornerCheckboxController =
      RoundedCornerCheckboxController();

  final customErrorWidget =
      ElementPreview(document: CustomErrorDocWidget(), previews: [
    WidgetPreview(
      widget: CustomError(
        errorType: ErrorType.customError,
        retryCallback: () {
          print("Retry");
        },
        showRetry: true,
      ),
      description:
          "Custom error widget can be used to change the body based on error received. It is configured with few errors however new errors can be customized with custom image, icon as well as title. It also enables to provide refresh option.",
    ),
  ]);

  final appLogo = ElementPreview(
    document: LogoWidgetDocWidget(),
    previews: [
      WidgetPreview(
        widget: LogoWidget(
          height: 100,
          width: 100,
          isBackgroundWhite: true,
        ),
        description:
            "App logo can be used to provide logo to the screen. It is already configured to change the logo depending on the background color. So in case of white background some colored logo is to be provided and vice-versa.",
      ),
    ],
  );

  final attachmentView = ElementPreview(
    document: AttachmentViewDocWidget(),
    previews: [
      WidgetPreview(
        widget: Center(
          child: Container(
            height: 300,
            width: 300,
            child: AttachmentView(
              url:
                  "https://sm.mashable.com/mashable_in/photo/default/datasecurity_pb31.jpg",
            ),
          ),
        ),
        description:
            "Links for documents in the form of image or pdf can be rendered using this widget. It comes with a predefined appbar. So this can be used to build a new screen. Only url for the attachment is to be passed which is to be displayed. This widget automatically checks for the attachment extensions and renders accordingly.",
      ),
    ],
  );

  final circularLoader = ElementPreview(
    document: CircularLoaderDocWidget(),
    previews: [
      WidgetPreview(
        widget: CircularLoader(),
        description:
            "This widget can be used to show the loading operation on any screen.",
      ),
    ],
  );

  final circularRippleEffectIconButton = ElementPreview(
    document: CircularRippleEffectIconButtonDocWidget(),
    previews: [
      WidgetPreview(
        widget: CircularRippleEffectIconButton(
          onPressed: () {
            print("Some Action Goes Here");
          },
          icon: Icons.close,
          iconColor: FF808080,
        ),
        description:
            "This widget can be used to present an IconButton with ripple effect. The only parameters to be passed are onPressed function, the iconData and the color for the icon.",
      ),
    ],
  );

  final customAppbar = ElementPreview(
    document: CustomAppBarDocWidget(),
    previews: [
      WidgetPreview(
        widget: CustomAppBar(
          text: "This is customized appbar",
          isSearchVisible: true,
        ),
        description:
            "Existing appbar can be replaced with this custom appbar. It is equipped with a back button which triggers Get.back() call and it can be customized to show the search icon if required, in such case the search callback must be provided.",
      ),
    ],
  );

  final customDialogBoxSingleButton = ElementPreview(
    document: CustomDialogBoxSingleButtonDocWidget(),
    previews: [
      WidgetPreview(
        widget: CustomDialogBoxSingleButton(
          title: "Info",
          body: JioTextMediumFont(
            text: "This will be the body of our dialog box",
            textColor: FF404040,
            fontSize: 18,
            maxLines: 100,
          ),
          radius: 6,
          closeCallBack: () {
            // close callback here
          },
          buttonText: "Submit",
          yesCallBack: () {
            // response of the submit button
          },
        ),
        description:
            "This widget can be used to render a rounded corner dialog box. This dialog box can be provided with the title, the body and the only button which is to be placed there with the callback. This widget can be customized by providing the required radius and the title or the body can be skipped.",
      ),
    ],
  );

  final customDialogBoxTwoButtons = ElementPreview(
    document: CustomDialogBoxTwoButtonsDocWidget(),
    previews: [
      WidgetPreview(
          widget: CustomDialogBoxTwoButtons(
            title: "Info",
            body: JioTextMediumFont(
              text: "This will be the body of our dialog box",
              textColor: FF404040,
              fontSize: 18,
              maxLines: 100,
            ),
            radius: 6,
            closeCallBack: () => print("Close Callback"),
            buttonText1: "No",
            buttonCallback1: () => print("No CallBack"),
            buttonText2: "Yes",
            buttonCallback2: () => print("Yes CallBack"),
          ),
          description:
              "Same as CustomDialogBoxSingleButton this widget comes with two buttons. It can be used in scenarios like accepting or rejecting a particular case."),
    ],
  );

  final customDropdown = ElementPreview(
    document: CustomDropDownDocWidget(),
    previews: [
      WidgetPreview(
        widget: CustomDropDown(
          height: 48,
          width: 200,
          borderRadius: 6,
          hint: "Select Time",
          dropdownMenuItemList:
              customDropdownController.buildTimeSlotDropdown(),
          onChanged: customDropdownController.onChangeTimeSlotDropdown,
          value: customDropdownController.timeSlotValue.value,
          isEnabled: true,
          fontSize: 16,
        ),
        description:
            "It is a customized dropdown which comes with rounded corners. Refer the CustomDropDownController for implementing the buildDropDown callback and the onChanged callback. It can be configured with a hint or enabled or disabled based on particular conditions. Other properties like the fontSized, the radius, the width and the height can also be customized as per requirements.",
      ),
    ],
  );

  final jioEditText = ElementPreview(
    document: JioEditTextDocWidget(),
    previews: [
      WidgetPreview(
        widget: JioEditText(
          height: 48,
          width: Get.width - 20,
          controller: editingController,
          lableText: "Lable",
          labelFontSize: 16,
        ),
        description:
            "JioEditText can be used to place an entry field in a form or update field in a form. This widget must be provided with the placeholder value i.e. the controller. It can be also used for password fields and set to enabled to disabled. Other options like autovalidate mode, prefixIcon or the suffixIcon, onChanged callback, validator callback, etc. can be provided to this widget. For long entry maxLines can be updated and restricted input can be also configured with restricting the length of the input.",
      ),
    ],
  );

  final imageTextHorizontal = ElementPreview(
    document: HorizontalImageTextDocWidget(),
    previews: [
      WidgetPreview(
        widget: HorizontalImageText(
          imageName: Assets.ic_logo_black,
          imageHeight: 100,
          imageWidth: 100,
          text: "Reliance Township",
          textColor: FF265AC2,
          textSize: 16,
        ),
        description:
            "Image Text Horizontal can be used to place an icon or image and text on the horizontal axis. The iconSize, it's color, the image height and width and the textSize and color can be configured as per requirements.",
      ),
    ],
  );

  final imageView = ElementPreview(
    document: ImageViewDocWidget(),
    previews: [
      WidgetPreview(
        widget: ImageView(
          imageUrl:
              "https://sm.mashable.com/mashable_in/photo/default/datasecurity_pb31.jpg",
          radius: 200,
          width: 200,
          height: 200,
        ),
        description:
            "ImageView can be used to render the network image to our application. The imageUrl is string placeholder for image address. The rendering can be customized to be rectangular box, square box, circle or any other shape by adjusting the radius, the width and the height properties accordingly.",
      ),
    ],
  );

  final jioBoldText = ElementPreview(
    document: JioTextBoldFontDocWidget(),
    previews: [
      WidgetPreview(
        widget: JioTextBoldFont(
          text: "Same Text",
          textColor: FF808080,
          fontSize: 20,
        ),
        description:
            "JioTextBoldFont is the bold version of the specified text. The text, textColor and the fontSize are the required parameters. However this widget can be customized by providing properties like textAlign, overflow, softWrap and the maxLines",
      ),
    ],
  );

  final jioMediumText = ElementPreview(
    document: JioTextMediumFontDocWidget(),
    previews: [
      WidgetPreview(
        widget: JioTextMediumFont(
          text: "Same Text",
          textColor: FF808080,
          fontSize: 20,
        ),
        description:
            "JioTextMediumFont is the medium version of the specified text. The text, textColor and the fontSize are the required parameters. However this widget can be customized by providing properties like textAlign, overflow, softWrap and the maxLines",
      ),
    ],
  );

  final jioLightText = ElementPreview(
    document: JioTextLightFontDocWidget(),
    previews: [
      WidgetPreview(
        widget: JioTextLightFont(
          text: "Same Text",
          textColor: FF808080,
          fontSize: 20,
        ),
        description:
            "JioTextLightFont is the light version of the specified text. The text, textColor and the fontSize are the required parameters. However this widget can be customized by providing properties like textAlign, overflow, softWrap and the maxLines",
      ),
    ],
  );

  final jioHelveticaMediumText = ElementPreview(
    document: JioTextHelveticaMediumFontDocWidget(),
    previews: [
      WidgetPreview(
        widget: JioTextHelveticaMediumFont(
          text: "Same Text",
          textColor: FF808080,
          fontSize: 20,
        ),
        description:
            "JioTextHelveticaMediumFont is the helvetica medium version of the specified text. The text, textColor and the fontSize are the required parameters. However this widget can be customized by providing properties like textAlign, overflow, softWrap and the maxLines",
      ),
    ],
  );

  final noDataFound = ElementPreview(
    document: NoDataFoundDocWidget(),
    previews: [
      WidgetPreview(
        widget: NoDataFound(),
        description:
            "This is basic widget which can be placed when the data which is to be rendered is empty or null. Rudimentary when the API returns no data for the particular screen, so rather than a blank screen this widget can be placed.",
      ),
    ],
  );

  final jioDatePicker = ElementPreview(
    document: JioDatePickerDocWidget(),
    previews: [
      WidgetPreview(
        widget: JioDatePicker(
          outputDateController: outputDateController,
        ),
        description:
            "It is a customized date picker as compared to the stock date picker wherein dialogbox opens in the center of the screen. JioDatePicker opens the datepicker at the bottom of the screen and it doesn't occupies half screen. The only parameter that must be provided is the controller which will hold of the value of the date picker.",
      ),
    ],
  );

  final noDataFoundWidget = ElementPreview(
    document: NoDataFoundWidgetDocWidget(),
    previews: [
      WidgetPreview(
        widget: NoDataFoundWidget(
          height: 150,
          width: 150,
          title: "Sorry No Data Found",
        ),
        description:
            "This widget can be placed when the data which is to be rendered is empty or null. As compared to the previous NoDataFound widget this widget is customizable. Although it comes with a stock picture, it can be provided with a custom picture and a custom icon. The height and width for the image or icon can be also customized.",
      ),
    ],
  );

  final otpField = ElementPreview(
    document: OTPFieldDocWidget(),
    previews: [
      WidgetPreview(
        widget: OTPField(
          otpController: otpController,
          length: 6,
        ),
        description:
            "OTPField is custom widget which requires the controller which will be the placeholder value. The length parameter is optional which is default to 6. The length can be increased or decrease as per the requirements.",
      ),
    ],
  );

  final weeklyList = ElementPreview(
    document: WeeklyListDocWidget(),
    previews: [
      WidgetPreview(
        widget: WeeklyList(
          operationalDays: [true, true, false, false, true, false, false],
        ),
        description:
            "This widget can be used to reflects the days of weeks which are encircled and the color of the circle is set or null. The required parameter i.e operationalDays must be of length 7 and the order of the days starts from Sunday.",
      ),
    ],
  );

  final verticalImageText = ElementPreview(
    document: VerticalImageTextDocWidget(),
    previews: [
      WidgetPreview(
        widget: Center(
          child: VerticalImageText(
            imageName: Assets.ic_logo_black,
            imageHeight: 100,
            imageWidth: 100,
            text: "Reliance Township",
            textColor: FF265AC2,
            textSize: 16,
          ),
        ),
        description:
            "VerticalImageText is the container which contains the image at the top and the description to it or some heading beneath it. It isn't limited to only image, this widget can be passed image asset, network image or any icon. The size of the image or the icon can be adjusted accordingly. The text color and text size of the container is also customizable.",
      ),
    ],
  );

  final roundedCornerCheckbox = ElementPreview(
    document: RoundedCornerCheckboxDocWidget(),
    previews: [
      WidgetPreview(
        widget: RoundedCornerCheckbox(
          value: roundedCornerCheckboxController.acceptTerms.value,
          onChanged: (value) {
            roundedCornerCheckboxController.changeAcceptTerms(value);
          },
          height: 40,
          width: 40,
        ),
        description:
            "Rounded Corner Checkbox is enhanced checkbox which has rounded corners. The height and the width of the checkbox can be customized. It required two parameters the placeholder value (bool) and the onChanged callback.",
      ),
    ],
  );

  final roundedCornerContainer = ElementPreview(
    document: RoundedCornerContainerDocWidget(),
    previews: [
      WidgetPreview(
        widget: RoundedCornerContainer(
          height: 250,
          width: 250,
          backgroundColor: FF265AC2,
          radius: 10,
          child: Icon(
            Icons.done,
          ),
        ),
        description:
            "Rounded Corner Container eliminates the need to provide any decorations to customize the normal container to have rounded corners. The parameters like height, width, background color, border color, margins and the elevations can be used to customize the container.",
      ),
    ],
  );

  final roundedCornerButton = ElementPreview(
    document: RoundedCornerButtonDocWidget(),
    previews: [
      WidgetPreview(
        widget: RoundedCornerButton(
          iconData: Icons.share,
          buttonText: "Share",
          onPressed: () {
            // onPressed Callback
          },
          buttonColor: FF265AC2,
          iconAndTextColor: FFFFFFFF,
          borderColor: FF265AC2,
        ),
        description:
            "Rounded Corner Button is the button which has rounded corners. Rather than having only the text this button can be customized to have icon. The position of the icon is also configurable, it can be placed before the text or after the text. The text and icon color, the border color of button and the background color of the button can also be configured.",
      ),
    ],
  );

  final roundedBorderContainer = ElementPreview(
    document: RoundedBorderContainerDocWidget(),
    previews: [
      WidgetPreview(
        widget: RoundedBorderContainer(
          borderColor: FF404040,
          borderWidth: 2,
          borderRadious: 10,
          height: 200,
          width: 200,
          margin: 10,
          child: Icon(
            Icons.share,
            size: 40,
          ),
        ),
        description:
            "Rounded border container is the container which has the border of the specified color, width specified and custom radius. The height, width and the margins of the container can also be customized.",
      ),
    ],
  );

  runApp(
    DocPreview(
      elements: [
        attachmentView,
        customErrorWidget,
        appLogo,
        circularLoader,
        circularRippleEffectIconButton,
        customAppbar,
        customDialogBoxSingleButton,
        customDialogBoxTwoButtons,
        customDropdown,
        jioEditText,
        imageTextHorizontal,
        imageView,
        jioBoldText,
        jioMediumText,
        jioLightText,
        jioHelveticaMediumText,
        noDataFound,
        jioDatePicker,
        noDataFoundWidget,
        otpField,
        weeklyList,
        verticalImageText,
        roundedCornerCheckbox,
        roundedCornerContainer,
        roundedCornerButton,
        roundedBorderContainer,
      ],
    ),
  );
}
