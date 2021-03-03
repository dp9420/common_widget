// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: prefer_single_quotes

// **************************************************************************
// DocWidgetGenerator
// **************************************************************************

import 'package:doc_widget/doc_widget.dart';

class ImageViewDocWidget implements Documentation {
  @override
  String get name => 'ImageView';
  @override
  bool get hasState => false;
  @override
  List<PropertyDoc> get properties => [
        PropertyDoc(
          name: 'imageUrl',
          isRequired: false,
          isNamed: true,
          type: 'String',
        ),
        PropertyDoc(
          name: 'radius',
          isRequired: false,
          isNamed: true,
          type: 'double',
          defaultValue: '0',
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
        ),
      ];
  @override
  String get snippet => '''final imageView = ImageView(
  imageUrl:
      'https://sm.mashable.com/mashable_in/photo/default/datasecurity_pb31.jpg',
  width: 200,
  height: 200,
  radius: 200,
);
''';
}
