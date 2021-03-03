// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: prefer_single_quotes

// **************************************************************************
// DocWidgetGenerator
// **************************************************************************

import 'package:doc_widget/doc_widget.dart';

class JioTextBoldFontDocWidget implements Documentation {
  @override
  String get name => 'JioTextBoldFont';
  @override
  bool get hasState => false;
  @override
  List<PropertyDoc> get properties => [
        PropertyDoc(
          name: 'text',
          isRequired: true,
          isNamed: true,
          type: 'String',
        ),
        PropertyDoc(
          name: 'align',
          isRequired: false,
          isNamed: true,
          type: 'TextAlign',
          defaultValue: 'TextAlign.start',
        ),
        PropertyDoc(
          name: 'overflow',
          isRequired: false,
          isNamed: true,
          type: 'TextOverflow',
          defaultValue: 'TextOverflow.ellipsis',
        ),
        PropertyDoc(
          name: 'maxLines',
          isRequired: false,
          isNamed: true,
          type: 'int',
          defaultValue: '1',
        ),
        PropertyDoc(
          name: 'softWrap',
          isRequired: false,
          isNamed: true,
          type: 'bool',
          defaultValue: 'false',
        ),
        PropertyDoc(
          name: 'textColor',
          isRequired: true,
          isNamed: true,
          type: 'Color',
        ),
        PropertyDoc(
          name: 'fontSize',
          isRequired: true,
          isNamed: true,
          type: 'double',
        ),
        PropertyDoc(
          name: 'fontWeight',
          isRequired: false,
          isNamed: true,
          type: 'FontWeight',
          defaultValue: 'FontWeight.normal',
        ),
      ];
  @override
  String get snippet => '''final jioTextBoldFont = JioTextBoldFont(
  text: 'Same Text',
  textColor: FF808080,
  fontSize: 20,
);
''';
}
