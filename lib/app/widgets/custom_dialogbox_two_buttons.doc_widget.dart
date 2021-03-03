// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: prefer_single_quotes

// **************************************************************************
// DocWidgetGenerator
// **************************************************************************

import 'package:doc_widget/doc_widget.dart';

class CustomDialogBoxTwoButtonsDocWidget implements Documentation {
  @override
  String get name => 'CustomDialogBoxTwoButtons';
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
          defaultValue: null,
        ),
        PropertyDoc(
          name: 'body',
          isRequired: false,
          isNamed: true,
          type: 'Widget',
        ),
        PropertyDoc(
          name: 'buttonText1',
          isRequired: false,
          isNamed: true,
          type: 'String',
        ),
        PropertyDoc(
          name: 'buttonText2',
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
          name: 'buttonCallback1',
          isRequired: false,
          isNamed: true,
          type: 'Function',
        ),
        PropertyDoc(
          name: 'buttonCallback2',
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
      '''final customDialogBoxTwoButtons = CustomDialogBoxTwoButtons(
  title: 'Info',
  body: JioTextMediumFont(
    text: 'This will be the body of our dialog box',
    textColor: FF404040,
    fontSize: 18,
    maxLines: 100,
  ),
  radius: 6,
  closeCallBack: () => print('Close Callback'),
  buttonText1: 'No',
  buttonCallback1: () => print('No CallBack'),
  buttonText2: 'Yes',
  buttonCallback2: () => print('Yes CallBack'),
);
''';
}
