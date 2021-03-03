// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: prefer_single_quotes

// **************************************************************************
// DocWidgetGenerator
// **************************************************************************

import 'package:doc_widget/doc_widget.dart';

class CustomAppBarDocWidget implements Documentation {
  @override
  String get name => 'CustomAppBar';
  @override
  bool get hasState => false;
  @override
  List<PropertyDoc> get properties => [
        PropertyDoc(
          name: 'text',
          isRequired: false,
          isNamed: true,
          type: 'String',
        ),
        PropertyDoc(
          name: 'isSearchVisible',
          isRequired: false,
          isNamed: true,
          type: 'bool',
          defaultValue: 'false',
        ),
        PropertyDoc(
          name: 'appBarBackground',
          isRequired: false,
          isNamed: true,
          type: 'Color',
        ),
        PropertyDoc(
          name: 'onSearchClick',
          isRequired: false,
          isNamed: true,
          type: 'Function',
        ),
      ];
  @override
  String get snippet => '''final appBar = CustomAppBar(
  title: 'Custom AppBar',
  isSearchVisible: true,
);
''';
}
