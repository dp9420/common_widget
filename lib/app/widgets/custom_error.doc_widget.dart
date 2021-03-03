// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: prefer_single_quotes

// **************************************************************************
// DocWidgetGenerator
// **************************************************************************

import 'package:doc_widget/doc_widget.dart';

class CustomErrorDocWidget implements Documentation {
  @override
  String get name => 'CustomError';
  @override
  bool get hasState => false;
  @override
  List<PropertyDoc> get properties => [
        PropertyDoc(
          name: 'errorType',
          isRequired: true,
          isNamed: true,
          type: 'ErrorType',
        ),
        PropertyDoc(
          name: 'isIcon',
          isRequired: false,
          isNamed: true,
          type: 'bool',
          defaultValue: 'false',
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
        PropertyDoc(
          name: 'icon',
          isRequired: false,
          isNamed: true,
          type: 'IconData',
        ),
        PropertyDoc(
          name: 'height',
          isRequired: false,
          isNamed: true,
          type: 'double',
          defaultValue: '150',
        ),
        PropertyDoc(
          name: 'width',
          isRequired: false,
          isNamed: true,
          type: 'double',
          defaultValue: '150',
        ),
        PropertyDoc(
          name: 'showRetry',
          isRequired: false,
          isNamed: true,
          type: 'bool',
          defaultValue: 'false',
        ),
        PropertyDoc(
          name: 'retryCallback',
          isRequired: false,
          isNamed: true,
          type: 'Function',
        ),
        PropertyDoc(
          name: 'retryIcon',
          isRequired: false,
          isNamed: true,
          type: 'IconData',
          defaultValue: 'Icons.refresh',
        ),
      ];
  @override
  String get snippet => '''final customError = CustomError(
  errorType: ErrorType.customError,
  retryCallback: () {
    print('Retry');
  },
  showRetry: true,
);
''';
}
