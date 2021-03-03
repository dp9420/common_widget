// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: prefer_single_quotes

// **************************************************************************
// DocWidgetGenerator
// **************************************************************************

import 'package:doc_widget/doc_widget.dart';

class WeeklyListDocWidget implements Documentation {
  @override
  String get name => 'WeeklyList';
  @override
  bool get hasState => false;
  @override
  List<PropertyDoc> get properties => [
        PropertyDoc(
          name: 'operationalDays',
          isRequired: true,
          isNamed: true,
          type: 'List<bool>',
        ),
      ];
  @override
  String get snippet => '''final weeklyList = WeeklyList(
  operationalDays: [true, true, false, false, true, false, false],
);
''';
}
