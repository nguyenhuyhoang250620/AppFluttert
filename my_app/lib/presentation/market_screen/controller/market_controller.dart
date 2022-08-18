import '/core/app_export.dart';
import 'package:my_app/presentation/market_screen/models/market_model.dart';
import 'package:flutter/material.dart';

class MarketController extends GetxController {
  TextEditingController inputSearchController3 = TextEditingController();

  Rx<MarketModel> marketModelObj = MarketModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    inputSearchController3.dispose();
  }
}
