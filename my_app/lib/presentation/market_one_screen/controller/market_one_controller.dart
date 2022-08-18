import '/core/app_export.dart';
import 'package:my_app/presentation/market_one_screen/models/market_one_model.dart';
import 'package:flutter/material.dart';

class MarketOneController extends GetxController {
  TextEditingController inputSearchController5 = TextEditingController();

  Rx<MarketOneModel> marketOneModelObj = MarketOneModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    inputSearchController5.dispose();
  }
}
