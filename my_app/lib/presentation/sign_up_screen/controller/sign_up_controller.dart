import '/core/app_export.dart';
import 'package:my_app/presentation/sign_up_screen/models/sign_up_model.dart';
import 'package:flutter/material.dart';

class SignUpController extends GetxController {
  TextEditingController inputTextController = TextEditingController();

  TextEditingController inputTextOneController = TextEditingController();

  Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    inputTextController.dispose();
    inputTextOneController.dispose();
  }
}
