// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: prefer_single_quotes

// **************************************************************************
// DocWidgetGenerator
// **************************************************************************

import 'package:doc_widget/doc_widget.dart';

class OTPFieldDocWidget implements Documentation {
  @override
  String get name => 'OTPField';
  @override
  bool get hasState => false;
  @override
  List<PropertyDoc> get properties => [
        PropertyDoc(
          name: 'otpController',
          isRequired: true,
          isNamed: true,
          type: 'TextEditingController',
        ),
        PropertyDoc(
          name: 'length',
          isRequired: false,
          isNamed: true,
          type: 'int',
          defaultValue: '6',
        ),
      ];
  @override
  String get snippet => '''final otpField = OTPField(
  otpController: otpController,
  length: 6,
);
''';
}
