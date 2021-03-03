// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: prefer_single_quotes

// **************************************************************************
// DocWidgetGenerator
// **************************************************************************

import 'package:doc_widget/doc_widget.dart';

class LogoWidgetDocWidget implements Documentation {
  @override
  String get name => 'LogoWidget';
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
          name: 'width',
          isRequired: false,
          isNamed: true,
          type: 'double',
        ),
        PropertyDoc(
          name: 'height',
          isRequired: false,
          isNamed: true,
          type: 'double',
          defaultValue: '60',
        ),
        PropertyDoc(
          name: 'isBackgroundWhite',
          isRequired: false,
          isNamed: true,
          type: 'bool',
          defaultValue: 'false',
        ),
      ];
  @override
  String get snippet => '''final logoWidget = LogoWidget(
  width: 100,
  height: 100,
  isBackgroundWhite: true,
);
''';
}
