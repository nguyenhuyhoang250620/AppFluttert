import '/core/app_export.dart';
import 'package:my_app/presentation/content_screen/models/content_model.dart';
import 'package:flutter/material.dart';

class ContentController extends GetxController {
  TextEditingController inputSearchController1 = TextEditingController();

  Rx<ContentModel> contentModelObj = ContentModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    inputSearchController1.dispose();
  }
}
