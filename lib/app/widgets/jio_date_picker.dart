import 'package:common_widget/app/constants/app_assets.dart';
import 'package:common_widget/app/constants/app_color.dart';
import 'package:common_widget/app/utils/date_util.dart';
import 'package:common_widget/app/utils/utils.dart';
import 'package:common_widget/app/widgets/jio_edit_text.dart';
import 'package:common_widget/app/widgets/rounded_corner_button.dart';
import 'package:doc_widget/doc_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

/// ```dart
/// final jioDatePicker = JioDatePicker(
///   outputDateController: outputDateController,
/// );
/// ```
@docWidget
class JioDatePicker extends StatelessWidget {
  const JioDatePicker({
    Key key,
    @required this.outputDateController,
    this.enablePastDates = false,
  }) : super(key: key);

  final TextEditingController outputDateController;
  final bool enablePastDates;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        DateRangePickerController dateController = DateRangePickerController();
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (BuildContext context) {
            return Wrap(
              children: [
                Container(
                  padding: const EdgeInsets.only(
                      left: 15, right: 15, top: 10, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SfDateRangePicker(
                        controller: dateController,
                        view: DateRangePickerView.month,
                        selectionMode: DateRangePickerSelectionMode.single,
                        selectionTextStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                        enablePastDates: enablePastDates,
                        selectionColor: FF265AC2,
                        rangeTextStyle:
                            const TextStyle(color: Colors.white, fontSize: 20),
                        todayHighlightColor: FFFFFFFF,
                        showNavigationArrow: true,
                        headerStyle: DateRangePickerHeaderStyle(
                            textAlign: TextAlign.center,
                            textStyle:
                                TextStyle(fontSize: 18, color: FF265AC2)),
                        monthCellStyle: DateRangePickerMonthCellStyle(
                          textStyle: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                          todayTextStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        monthViewSettings: DateRangePickerMonthViewSettings(
                          enableSwipeSelection: true,
                          viewHeaderStyle: DateRangePickerViewHeaderStyle(
                            textStyle: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      RoundedCornerButton(
                        width: Get.width - 40,
                        height: 48,
                        buttonText: 'OK',
                        onPressed: () {
                          try {
                            print(dateController.selectedDate);
                            DateTime picked = dateController.selectedDate;
                            outputDateController.text =
                                "${picked.year}-${DateUtil.padTwoDigit(picked.month)}-${DateUtil.padTwoDigit(picked.day)}";
                            Get.back();
                            // return dateController.selectedDate;
                          } catch (e) {
                            Utils.showErrorSnackBar("Select the date");
                          }
                        },
                        buttonColor: FF265AC2,
                        iconAndTextColor: FFFFFFFF,
                        borderColor: FF265AC2,
                        iconData: null,
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        );
      },
      child: JioEditText(
        controller: outputDateController,
        width: Get.width - 30,
        lableText: "Select Date",
        suffixIcon: Image.asset(
          Assets.ic_date_picker,
          scale: 1.8,
        ),
        labelFontSize: 16,
        fontSize: 16,
        inputType: TextInputType.text,
        textAlign: TextAlign.start,
        autofocus: false,
        enable: false,
      ),
    );
  }
}
