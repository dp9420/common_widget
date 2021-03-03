// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: prefer_single_quotes

// **************************************************************************
// DocWidgetGenerator
// **************************************************************************

import 'package:doc_widget/doc_widget.dart';

class RoundedCornerButtonDocWidget implements Documentation {
  @override
  String get name => 'RoundedCornerButton';
  @override
  bool get hasState => false;
  @override
  List<PropertyDoc> get properties => [
        PropertyDoc(
          name: 'iconData',
          isRequired: true,
          isNamed: true,
          type: 'IconData',
        ),
        PropertyDoc(
          name: 'buttonText',
          isRequired: true,
          isNamed: true,
          type: 'String',
        ),
        PropertyDoc(
          name: 'onPressed',
          isRequired: true,
          isNamed: true,
          type: 'Function',
        ),
        PropertyDoc(
          name: 'buttonColor',
          isRequired: true,
          isNamed: true,
          type: 'Color',
        ),
        PropertyDoc(
          name: 'iconAndTextColor',
          isRequired: true,
          isNamed: true,
          type: 'Color',
        ),
        PropertyDoc(
          name: 'borderColor',
          isRequired: true,
          isNamed: true,
          type: 'Color',
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
          defaultValue: '32',
        ),
        PropertyDoc(
          name: 'iconSize',
          isRequired: false,
          isNamed: true,
          type: 'double',
          defaultValue: '14',
        ),
        PropertyDoc(
          name: 'radius',
          isRequired: false,
          isNamed: true,
          type: 'double',
          defaultValue: '5',
        ),
        PropertyDoc(
          name: 'fontSize',
          isRequired: false,
          isNamed: true,
          type: 'double',
          defaultValue: '18',
        ),
        PropertyDoc(
          name: 'enableButton',
          isRequired: false,
          isNamed: true,
          type: 'bool',
          defaultValue: 'true',
        ),
      ];
  @override
  String get snippet => '''final roundedCornerButton = RoundedCornerButton(
  iconData: Icons.share,
  buttonText: 'Share',
  onPressed: () {
    // onPressed Callback
  },
  buttonColor: FF265AC2,
  iconAndTextColor: FFFFFFFF,
  borderColor: FF265AC2,
);
''';
}
