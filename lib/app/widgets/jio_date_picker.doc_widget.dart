// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: prefer_single_quotes

// **************************************************************************
// DocWidgetGenerator
// **************************************************************************

import 'package:doc_widget/doc_widget.dart';

class JioDatePickerDocWidget implements Documentation {
  @override
  String get name => 'JioDatePicker';
  @override
  bool get hasState => false;
  @override
  List<PropertyDoc> get properties => [
        PropertyDoc(
          name: 'key',
          isRequired: false,
          isNamed: true,
          type: 'Key',
        ),
        PropertyDoc(
          name: 'outputDateController',
          isRequired: true,
          isNamed: true,
          type: 'TextEditingController',
        ),
        PropertyDoc(
          name: 'enablePastDates',
          isRequired: false,
          isNamed: true,
          type: 'bool',
          defaultValue: 'false',
        ),
      ];
  @override
  String get snippet => '''final jioDatePicker = JioDatePicker(
  outputDateController: outputDateController,
);
''';
}
