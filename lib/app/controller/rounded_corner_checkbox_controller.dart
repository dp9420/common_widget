import 'package:get/get.dart';

class RoundedCornerCheckboxController extends GetxController {
  RxBool acceptTerms = RxBool(true);

  void changeAcceptTerms(bool acceptValue) {
    acceptTerms.value = acceptValue;
    update();
  }
}
