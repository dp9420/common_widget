// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: prefer_single_quotes

// **************************************************************************
// DocWidgetGenerator
// **************************************************************************

import 'package:doc_widget/doc_widget.dart';

class JioEditTextDocWidget implements Documentation {
  @override
  String get name => 'JioEditText';
  @override
  bool get hasState => false;
  @override
  List<PropertyDoc> get properties => [
        PropertyDoc(
          name: 'controller',
          isRequired: false,
          isNamed: true,
          type: 'TextEditingController',
        ),
        PropertyDoc(
          name: 'height',
          isRequired: false,
          isNamed: true,
          type: 'double',
          defaultValue: '48',
        ),
        PropertyDoc(
          name: 'width',
          isRequired: false,
          isNamed: true,
          type: 'double',
        ),
        PropertyDoc(
          name: 'maxLength',
          isRequired: false,
          isNamed: true,
          type: 'int',
        ),
        PropertyDoc(
          name: 'obscure',
          isRequired: false,
          isNamed: true,
          type: 'bool',
          defaultValue: 'false',
        ),
        PropertyDoc(
          name: 'topMargin',
          isRequired: false,
          isNamed: true,
          type: 'double',
          defaultValue: '0',
        ),
        PropertyDoc(
          name: 'leftMargin',
          isRequired: false,
          isNamed: true,
          type: 'double',
          defaultValue: '0',
        ),
        PropertyDoc(
          name: 'rightMargin',
          isRequired: false,
          isNamed: true,
          type: 'double',
          defaultValue: '0',
        ),
        PropertyDoc(
          name: 'leftpadding',
          isRequired: false,
          isNamed: true,
          type: 'double',
          defaultValue: '0',
        ),
        PropertyDoc(
          name: 'bottomPadding',
          isRequired: false,
          isNamed: true,
          type: 'double',
          defaultValue: '0',
        ),
        PropertyDoc(
          name: 'topTextPadding',
          isRequired: false,
          isNamed: true,
          type: 'double',
          defaultValue: '14',
        ),
        PropertyDoc(
          name: 'bottomTextPadding',
          isRequired: false,
          isNamed: true,
          type: 'double',
          defaultValue: '14',
        ),
        PropertyDoc(
          name: 'onChanged',
          isRequired: false,
          isNamed: true,
          type: 'Function',
        ),
        PropertyDoc(
          name: 'focusNode',
          isRequired: false,
          isNamed: true,
          type: 'FocusNode',
        ),
        PropertyDoc(
          name: 'onFieldSubmitted',
          isRequired: false,
          isNamed: true,
          type: 'Function',
        ),
        PropertyDoc(
          name: 'validator',
          isRequired: false,
          isNamed: true,
          type: 'Function',
        ),
        PropertyDoc(
          name: 'validation',
          isRequired: false,
          isNamed: true,
          type: 'Function',
        ),
        PropertyDoc(
          name: 'enable',
          isRequired: false,
          isNamed: true,
          type: 'bool',
          defaultValue: 'true',
        ),
        PropertyDoc(
          name: 'autofocus',
          isRequired: false,
          isNamed: true,
          type: 'bool',
          defaultValue: 'false',
        ),
        PropertyDoc(
          name: 'fontSize',
          isRequired: false,
          isNamed: true,
          type: 'double',
          defaultValue: '16',
        ),
        PropertyDoc(
          name: 'prefixIcon',
          isRequired: false,
          isNamed: true,
          type: 'Widget',
        ),
        PropertyDoc(
          name: 'suffixIcon',
          isRequired: false,
          isNamed: true,
          type: 'Widget',
        ),
        PropertyDoc(
          name: 'textAlign',
          isRequired: false,
          isNamed: true,
          type: 'TextAlign',
          defaultValue: 'TextAlign.left',
        ),
        PropertyDoc(
          name: 'textAlignVertical',
          isRequired: false,
          isNamed: true,
          type: 'TextAlignVertical',
          defaultValue: 'TextAlignVertical.center',
        ),
        PropertyDoc(
          name: 'autovalidateMode',
          isRequired: false,
          isNamed: true,
          type: 'AutovalidateMode',
        ),
        PropertyDoc(
          name: 'inputType',
          isRequired: false,
          isNamed: true,
          type: 'TextInputType',
        ),
        PropertyDoc(
          name: 'lableText',
          isRequired: false,
          isNamed: true,
          type: 'String',
        ),
        PropertyDoc(
          name: 'labelFontSize',
          isRequired: false,
          isNamed: true,
          type: 'double',
          defaultValue: '16',
        ),
        PropertyDoc(
          name: 'borderColor',
          isRequired: false,
          isNamed: true,
          type: 'Color',
        ),
        PropertyDoc(
          name: 'maxLines',
          isRequired: false,
          isNamed: true,
          type: 'int',
          defaultValue: '1',
        ),
      ];
  @override
  String get snippet => '''final jioEditText = JioEditText(
  height: 48,
  width: Get.width - 20,
  controller: editingController,
  lableText: 'Lable',
  labelFontSize: 16,
);
''';
}
