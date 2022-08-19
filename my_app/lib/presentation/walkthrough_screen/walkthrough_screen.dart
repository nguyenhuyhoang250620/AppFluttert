import 'controller/walkthrough_controller.dart';
import 'package:flutter/material.dart';
import 'package:my_app/core/app_export.dart';

class WalkthroughScreen extends GetWidget<WalkthroughController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: getSize(
                        327.00,
                      ),
                      width: getSize(
                        327.00,
                      ),
                      margin: getMargin(
                        left: 14,
                        top: 65,
                        right: 14,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.gray51,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            8.00,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: getHorizontalSize(
                        291.00,
                      ),
                      margin: getMargin(
                        left: 14,
                        top: 31,
                        right: 14,
                      ),
                      child: Text(
                        "msg_this_is_a_walkt".tr,
                        maxLines: null,
                        textAlign: TextAlign.center,
                        style: AppStyle.txtInterMedium32.copyWith(
                          height: 1.25,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: getHorizontalSize(
                        284.00,
                      ),
                      margin: getMargin(
                        left: 14,
                        top: 16,
                        right: 14,
                      ),
                      child: Text(
                        "msg_hundreds_of_pop".tr,
                        maxLines: null,
                        textAlign: TextAlign.center,
                        style: AppStyle.txtInterRegular16.copyWith(
                          height: 1.50,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 14,
                        top: 171,
                        right: 14,
                        bottom: 20,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgPager,
                        height: getVerticalSize(
                          4.00,
                        ),
                        width: getHorizontalSize(
                          20.00,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
