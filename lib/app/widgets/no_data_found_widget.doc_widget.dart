// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: prefer_single_quotes

// **************************************************************************
// DocWidgetGenerator
// **************************************************************************

import 'package:doc_widget/doc_widget.dart';

class NoDataFoundWidgetDocWidget implements Documentation {
  @override
  String get name => 'NoDataFoundWidget';
  @override
  bool get hasState => false;
  @override
  List<PropertyDoc> get properties => [
        PropertyDoc(
          name: 'height',
          isRequired: false,
          isNamed: true,
          type: 'double',
          defaultValue: '100',
        ),
        PropertyDoc(
          name: 'width',
          isRequired: false,
          isNamed: true,
          type: 'double',
          defaultValue: '100',
        ),
        PropertyDoc(
          name: 'icon',
          isRequired: false,
          isNamed: true,
          type: 'IconData',
        ),
        PropertyDoc(
          name: 'title',
          isRequired: false,
          isNamed: true,
          type: 'String',
        ),
        PropertyDoc(
          name: 'customImage',
          isRequired: false,
          isNamed: true,
          type: 'String',
        ),
      ];
  @override
  String get snippet => '''final noDataFoundWidget = NoDataFoundWidget(
  height: 150,
  width: 150,
  title: 'Sorry No Data Found',
);
''';
}
