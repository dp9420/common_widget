// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: prefer_single_quotes

// **************************************************************************
// DocWidgetGenerator
// **************************************************************************

import 'package:doc_widget/doc_widget.dart';

class CustomDropDownDocWidget implements Documentation {
  @override
  String get name => 'CustomDropDown';
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
          name: 'dropdownMenuItemList',
          isRequired: true,
          isNamed: true,
          type: 'List<DropdownMenuItem<T>>',
        ),
        PropertyDoc(
          name: 'onChanged',
          isRequired: true,
          isNamed: true,
          type: 'void Function(T)',
        ),
        PropertyDoc(
          name: 'value',
          isRequired: true,
          isNamed: true,
          type: 'T',
        ),
        PropertyDoc(
          name: 'isEnabled',
          isRequired: false,
          isNamed: true,
          type: 'bool',
          defaultValue: 'true',
        ),
        PropertyDoc(
          name: 'hint',
          isRequired: false,
          isNamed: true,
          type: 'String',
        ),
        PropertyDoc(
          name: 'borderColor',
          isRequired: false,
          isNamed: true,
          type: 'Color',
          defaultValue: 'Colors.black12',
        ),
        PropertyDoc(
          name: 'borderRadius',
          isRequired: false,
          isNamed: true,
          type: 'double',
        ),
        PropertyDoc(
          name: 'height',
          isRequired: false,
          isNamed: true,
          type: 'double',
        ),
        PropertyDoc(
          name: 'width',
          isRequired: false,
          isNamed: true,
          type: 'double',
        ),
        PropertyDoc(
          name: 'fontSize',
          isRequired: false,
          isNamed: true,
          type: 'double',
          defaultValue: '12',
        ),
      ];
  @override
  String get snippet => '''final customDropdown = CustomDropDown(
  height: 48,
  width: 200,
  borderRadius: 6,
  hint: 'Select Time',
  dropdownMenuItemList: buildTimeSlotDropdown(),
  onChanged: onChangeTimeSlotDropdown,
  value: timeSlotValue.value,
  isEnabled: true,
  fontSize: 16,
);
''';
}
