// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: prefer_single_quotes

// **************************************************************************
// DocWidgetGenerator
// **************************************************************************

import 'package:doc_widget/doc_widget.dart';

class CustomDialogBoxSingleButtonDocWidget implements Documentation {
  @override
  String get name => 'CustomDialogBoxSingleButton';
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
          name: 'title',
          isRequired: false,
          isNamed: true,
          type: 'String',
        ),
        PropertyDoc(
          name: 'body',
          isRequired: true,
          isNamed: true,
          type: 'Widget',
        ),
        PropertyDoc(
          name: 'buttonText',
          isRequired: false,
          isNamed: true,
          type: 'String',
        ),
        PropertyDoc(
          name: 'radius',
          isRequired: false,
          isNamed: true,
          type: 'double',
        ),
        PropertyDoc(
          name: 'yesCallBack',
          isRequired: false,
          isNamed: true,
          type: 'Function',
        ),
        PropertyDoc(
          name: 'closeCallBack',
          isRequired: false,
          isNamed: true,
          type: 'Function',
        ),
        PropertyDoc(
          name: 'showCloseIcon',
          isRequired: false,
          isNamed: true,
          type: 'bool',
          defaultValue: 'true',
        ),
      ];
  @override
  String get snippet =>
      '''final customDialogBoxSingleButton = CustomDialogBoxSingleButton(
  title: 'Info',
  body: JioTextMediumFont(
    text: 'This will be the body of our dialog box',
    textColor: FF404040,
    fontSize: 18,
    maxLines: 100,
  ),
  radius: 6,
  closeCallBack: () {
    // close callback here
  },
  buttonText: 'Submit',
  yesCallBack: () {
    // response of the submit button
  },
);
''';
}
