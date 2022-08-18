import '/core/app_export.dart';
import 'package:my_app/presentation/gallery_screen/models/gallery_model.dart';
import 'package:flutter/material.dart';

class GalleryController extends GetxController {
  TextEditingController inputSearchController4 = TextEditingController();

  Rx<GalleryModel> galleryModelObj = GalleryModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    inputSearchController4.dispose();
  }
}
