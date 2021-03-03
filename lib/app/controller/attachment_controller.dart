import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:path/path.dart' as p;

class AttachmentController extends GetxController {
  String url;
  AttachmentController({@required this.url});

  PDFDocument document;
  bool isAttachmentLoading = true;

  @override
  void onInit() {
    super.onInit();
    p.extension(url) == '.pdf' ? getPDF() : viewImage();
  }

  getPDF() async {
    print("getPDF $url");
    isAttachmentLoading = true;
    document = await PDFDocument.fromURL(url);
    isAttachmentLoading = false;
    print("getPDF 2");
    update();
  }

  viewImage() {
    isAttachmentLoading = false;
    update();
  }
}
