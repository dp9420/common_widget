// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: prefer_single_quotes

// **************************************************************************
// DocWidgetGenerator
// **************************************************************************

import 'package:doc_widget/doc_widget.dart';

class RoundedCornerCheckboxDocWidget implements Documentation {
  @override
  String get name => 'RoundedCornerCheckbox';
  @override
  bool get hasState => false;
  @override
  List<PropertyDoc> get properties => [
        PropertyDoc(
          name: 'value',
          isRequired: true,
          isNamed: true,
          type: 'bool',
        ),
        PropertyDoc(
          name: 'onChanged',
          isRequired: true,
          isNamed: true,
          type: 'void Function(bool)',
        ),
        PropertyDoc(
          name: 'height',
          isRequired: false,
          isNamed: true,
          type: 'double',
          defaultValue: '30',
        ),
        PropertyDoc(
          name: 'width',
          isRequired: false,
          isNamed: true,
          type: 'double',
          defaultValue: '30',
        ),
      ];
  @override
  String get snippet => '''final roundedCornerCheckbox = RoundedCornerCheckbox(
  value: value,
  onChanged: (newValue) {
    // change the value which holds the value of checkbox
  },
  height: 40,
  width: 40,
);
''';
}
