import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:common_widget/app/controller/attachment_controller.dart';
import 'package:common_widget/app/widgets/circular_loader.dart';
import 'package:common_widget/app/widgets/custom_app_bar.dart';
import 'package:doc_widget/doc_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:path/path.dart' as p;

/// ```dart
/// final attachmentView = AttachmentView(
///   url: "https://sm.mashable.com/mashable_in/photo/default/datasecurity_pb31.jpg",
/// );
/// ```
@docWidget
class AttachmentView extends StatelessWidget {
  final String url;
  AttachmentView({this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        text: "",
      ),
      body: GetBuilder<AttachmentController>(
          init: AttachmentController(url: url),
          builder: (_) {
            print(p.extension(url));
            return _.isAttachmentLoading
                ? CircularLoader()
                : p.extension(url) == '.pdf'
                    ? PDFViewer(document: _.document)
                    : Center(
                        child: FadeInImage(
                          placeholder: AssetImage(
                              'assets/images/ic_default_placeholder.png'),
                          image: NetworkImage(url),
                        ),
                      );
          }),
    );
  }
}
