import 'controller/congratulations_controller.dart';
import 'package:flutter/material.dart';
import 'package:my_app/core/app_export.dart';
import 'package:my_app/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class CongratulationsDialog extends StatelessWidget {
  CongratulationsDialog(this.controller);

  CongratulationsController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            margin: getMargin(
              left: 16,
              top: 224,
              right: 16,
              bottom: 20,
            ),
            decoration: AppDecoration.outlineIndigo9003f.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 16,
                    top: 39,
                    right: 16,
                  ),
                  child: Text(
                    "msg_congratulations".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterMedium32.copyWith(
                      height: 1.00,
                    ),
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    280.00,
                  ),
                  margin: getMargin(
                    left: 16,
                    top: 18,
                    right: 16,
                  ),
                  child: Text(
                    "msg_consequat_velit2".tr,
                    maxLines: null,
                    textAlign: TextAlign.center,
                    style: AppStyle.txtInterRegular16Gray700.copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
                CustomButton(
                  width: 311,
                  text: "lbl_click_me".tr,
                  margin: getMargin(
                    left: 16,
                    top: 39,
                    right: 16,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 16,
                    top: 18,
                    right: 16,
                    bottom: 27,
                  ),
                  child: Text(
                    "msg_secondary_actio".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterMedium16.copyWith(
                      height: 1.00,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
