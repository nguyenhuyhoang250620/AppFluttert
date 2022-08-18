import '/core/app_export.dart';
import 'package:my_app/presentation/radios_screen/models/radios_model.dart';
import 'package:flutter/material.dart';

class RadiosController extends GetxController {
  TextEditingController radioSelecteController = TextEditingController();

  TextEditingController groupTwentyFiveController = TextEditingController();

  TextEditingController radioSelecteOneController = TextEditingController();

  TextEditingController groupTwentyNineController = TextEditingController();

  TextEditingController groupThirtyOneController = TextEditingController();

  TextEditingController radioSelecteTwoController = TextEditingController();

  Rx<RadiosModel> radiosModelObj = RadiosModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    radioSelecteController.dispose();
    groupTwentyFiveController.dispose();
    radioSelecteOneController.dispose();
    groupTwentyNineController.dispose();
    groupThirtyOneController.dispose();
    radioSelecteTwoController.dispose();
  }
}
