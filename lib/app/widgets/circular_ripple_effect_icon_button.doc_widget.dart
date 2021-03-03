// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: prefer_single_quotes

// **************************************************************************
// DocWidgetGenerator
// **************************************************************************

import 'package:doc_widget/doc_widget.dart';

class CircularRippleEffectIconButtonDocWidget implements Documentation {
  @override
  String get name => 'CircularRippleEffectIconButton';
  @override
  bool get hasState => false;
  @override
  List<PropertyDoc> get properties => [
        PropertyDoc(
          name: 'onPressed',
          isRequired: false,
          isNamed: true,
          type: 'Function',
        ),
        PropertyDoc(
          name: 'icon',
          isRequired: false,
          isNamed: true,
          type: 'IconData',
        ),
        PropertyDoc(
          name: 'iconColor',
          isRequired: false,
          isNamed: true,
          type: 'Color',
        ),
      ];
  @override
  String get snippet =>
      '''final circularRippleEffectIconButton = CircularRippleEffectIconButton(
    onPressed: () {
      print('Some Action Goes Here');
    },
    icon: Icons.close,
    iconColor: FF808080);
''';
}
