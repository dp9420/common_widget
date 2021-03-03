// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: prefer_single_quotes

// **************************************************************************
// DocWidgetGenerator
// **************************************************************************

import 'package:doc_widget/doc_widget.dart';

class HorizontalImageTextDocWidget implements Documentation {
  @override
  String get name => 'HorizontalImageText';
  @override
  bool get hasState => false;
  @override
  List<PropertyDoc> get properties => [
        PropertyDoc(
          name: 'iconURL',
          isRequired: false,
          isNamed: true,
          type: 'String',
          defaultValue: 'http://openweathermap.org/img/w/10d.png',
        ),
        PropertyDoc(
          name: 'icon',
          isRequired: false,
          isNamed: true,
          type: 'IconData',
          defaultValue: 'Icons.ac_unit_sharp',
        ),
        PropertyDoc(
          name: 'isIconData',
          isRequired: false,
          isNamed: true,
          type: 'bool',
          defaultValue: 'false',
        ),
        PropertyDoc(
          name: 'isNetworkImage',
          isRequired: false,
          isNamed: true,
          type: 'bool',
          defaultValue: 'false',
        ),
        PropertyDoc(
          name: 'imageName',
          isRequired: false,
          isNamed: true,
          type: 'String',
        ),
        PropertyDoc(
          name: 'imageHeight',
          isRequired: false,
          isNamed: true,
          type: 'double',
        ),
        PropertyDoc(
          name: 'imageWidth',
          isRequired: false,
          isNamed: true,
          type: 'double',
        ),
        PropertyDoc(
          name: 'text',
          isRequired: true,
          isNamed: true,
          type: 'String',
        ),
        PropertyDoc(
          name: 'textColor',
          isRequired: true,
          isNamed: true,
          type: 'Color',
        ),
        PropertyDoc(
          name: 'textSize',
          isRequired: true,
          isNamed: true,
          type: 'double',
        ),
      ];
  @override
  String get snippet => '''final imageTextHorizontal = HorizontalImageText(
  imageName: Assets.ic_logo_black,
  imageHeight: 100,
  imageWidth: 100,
  text: 'Reliance Township',
  textColor: FF265AC2,
  textSize: 16,
);
''';
}
