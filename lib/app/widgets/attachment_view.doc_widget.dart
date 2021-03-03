// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: prefer_single_quotes

// **************************************************************************
// DocWidgetGenerator
// **************************************************************************

import 'package:doc_widget/doc_widget.dart';

class AttachmentViewDocWidget implements Documentation {
  @override
  String get name => 'AttachmentView';
  @override
  bool get hasState => false;
  @override
  List<PropertyDoc> get properties => [
        PropertyDoc(
          name: 'url',
          isRequired: false,
          isNamed: true,
          type: 'String',
        ),
      ];
  @override
  String get snippet => '''final attachmentView = AttachmentView(
  url:
      'https://sm.mashable.com/mashable_in/photo/default/datasecurity_pb31.jpg',
);
''';
}
