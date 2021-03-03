// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: prefer_single_quotes

// **************************************************************************
// DocWidgetGenerator
// **************************************************************************

import 'package:doc_widget/doc_widget.dart';

class RoundedBorderContainerDocWidget implements Documentation {
  @override
  String get name => 'RoundedBorderContainer';
  @override
  bool get hasState => false;
  @override
  List<PropertyDoc> get properties => [
        PropertyDoc(
          name: 'child',
          isRequired: false,
          isNamed: true,
          type: 'Widget',
        ),
        PropertyDoc(
          name: 'borderColor',
          isRequired: false,
          isNamed: true,
          type: 'Color',
        ),
        PropertyDoc(
          name: 'borderWidth',
          isRequired: false,
          isNamed: true,
          type: 'double',
        ),
        PropertyDoc(
          name: 'borderRadious',
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
          name: 'margin',
          isRequired: false,
          isNamed: true,
          type: 'double',
          defaultValue: '0',
        ),
        PropertyDoc(
          name: 'height',
          isRequired: false,
          isNamed: true,
          type: 'double',
        ),
      ];
  @override
  String get snippet =>
      '''final roundedBorderContainer = RoundedBorderContainer(
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
);
''';
}
