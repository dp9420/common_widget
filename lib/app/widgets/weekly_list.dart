import 'package:common_widget/app/constants/app_color.dart';
import 'package:common_widget/app/widgets/jio_medium_text.dart';
import 'package:common_widget/app/widgets/rounded_corner_container.dart';
import 'package:doc_widget/doc_widget.dart';
import 'package:flutter/material.dart';

/// ```dart
/// final weeklyList = WeeklyList(
///   operationalDays: [true, true, false, false, true, false, false],
/// );
/// ```
@docWidget
class WeeklyList extends StatelessWidget {
  final List<bool> operationalDays;
  final List<String> days = ["S", "M", "T", "W", "T", "F", "S"];
  WeeklyList({@required this.operationalDays});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: operationalDays.length,
        itemBuilder: (context, index) {
          return RoundedCornerContainer(
            backgroundColor:
                operationalDays[index] ? FF4CA24C : Colors.transparent,
            borderColor: operationalDays[index] ? FF4CA24C : FFA2A2A2,
            borderWidth: 1.8,
            width: 36,
            height: 36,
            radius: 36,
            child: Center(
              child: JioTextMediumFont(
                text: days[index],
                textColor: operationalDays[index] ? FFFFFFFF : FFA2A2A2,
                fontSize: 14,
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 4);
        },
      ),
    );
  }
}
