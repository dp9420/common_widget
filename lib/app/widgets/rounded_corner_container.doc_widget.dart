// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: prefer_single_quotes

// **************************************************************************
// DocWidgetGenerator
// **************************************************************************

import 'package:doc_widget/doc_widget.dart';

class RoundedCornerContainerDocWidget implements Documentation {
  @override
  String get name => 'RoundedCornerContainer';
  @override
  bool get hasState => false;
  @override
  List<PropertyDoc> get properties => [
        PropertyDoc(
          name: 'height',
          isRequired: false,
          isNamed: true,
          type: 'double',
        ),
        PropertyDoc(
          name: 'borderColor',
          isRequired: false,
          isNamed: true,
          type: 'Color',
          defaultValue: 'const Color(0x00ffffff)',
        ),
        PropertyDoc(
          name: 'borderWidth',
          isRequired: false,
          isNamed: true,
          type: 'double',
          defaultValue: '0.0',
        ),
        PropertyDoc(
          name: 'width',
          isRequired: false,
          isNamed: true,
          type: 'double',
        ),
        PropertyDoc(
          name: 'backgroundColor',
          isRequired: false,
          isNamed: true,
          type: 'Color',
        ),
        PropertyDoc(
          name: 'radius',
          isRequired: false,
          isNamed: true,
          type: 'double',
          defaultValue: '0.0',
        ),
        PropertyDoc(
          name: 'child',
          isRequired: false,
          isNamed: true,
          type: 'Widget',
        ),
        PropertyDoc(
          name: 'elevation',
          isRequired: false,
          isNamed: true,
          type: 'double',
          defaultValue: '0.0',
        ),
        PropertyDoc(
          name: 'leftMargin',
          isRequired: false,
          isNamed: true,
          type: 'double',
          defaultValue: '0.0',
        ),
        PropertyDoc(
          name: 'rightMargin',
          isRequired: false,
          isNamed: true,
          type: 'double',
          defaultValue: '0.0',
        ),
        PropertyDoc(
          name: 'topMargin',
          isRequired: false,
          isNamed: true,
          type: 'double',
          defaultValue: '0.0',
        ),
        PropertyDoc(
          name: 'bottomMargin',
          isRequired: false,
          isNamed: true,
          type: 'double',
          defaultValue: '0.0',
        ),
      ];
  @override
  String get snippet =>
      '''final roundedCornerContainer = RoundedCornerContainer(
  height: 250,
  width: 250,
  backgroundColor: FF265AC2,
  radius: 10,
  child: Icon(
    Icons.done,
  ),
);
''';
}
