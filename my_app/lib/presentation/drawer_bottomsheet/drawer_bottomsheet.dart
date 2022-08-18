import 'controller/drawer_controller.dart';
import 'package:flutter/material.dart';
import 'package:my_app/core/app_export.dart';
import 'package:my_app/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class DrawerBottomsheet extends StatelessWidget {
  DrawerBottomsheet(this.controller);

  DrawerControllerState controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: double.infinity,
                decoration: AppDecoration.outlineBlack9003f.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL16,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: getPadding(
                        left: 24,
                        top: 54,
                        right: 24,
                      ),
                      child: Text(
                        "lbl_drawer_header".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterMedium24Gray900.copyWith(),
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(
                        293.00,
                      ),
                      margin: getMargin(
                        left: 24,
                        top: 18,
                        right: 24,
                      ),
                      child: Text(
                        "msg_consequat_velit".tr,
                        maxLines: null,
                        textAlign: TextAlign.center,
                        style: AppStyle.txtInterMedium16Gray700.copyWith(),
                      ),
                    ),
                    CustomButton(
                      width: 327,
                      text: "lbl_click_me".tr,
                      margin: getMargin(
                        left: 24,
                        top: 35,
                        right: 24,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 24,
                        top: 21,
                        right: 24,
                        bottom: 20,
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
            ),
          ],
        ),
      ),
    );
  }
}
