import 'controller/profile_menu_controller.dart';
import 'package:flutter/material.dart';
import 'package:my_app/core/app_export.dart';

class ProfileMenuScreen extends GetWidget<ProfileMenuController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: Column(
                  children: [
                    Container(
                        width: size.width,
                        child: Container(
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 24, top: 26, right: 24),
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            // GestureDetector(
                                            //     onTap: () {
                                            //       onTapImgArrowleft();
                                            //     },
                                            //     child: Padding(
                                            //         padding: getPadding(top: 2, bottom: 5),
                                            //         child: CommonImageView(
                                            //             svgPath: ImageConstant.imgArrowleft,
                                            //             height: getVerticalSize(12.00),
                                            //             width: getHorizontalSize(16.00)))),
                                            // Padding(
                                            //     padding: getPadding(left: 120),
                                            //     child: Text("lbl_profile".tr,
                                            //         overflow: TextOverflow.ellipsis,
                                            //         textAlign: TextAlign.left,
                                            //         style: AppStyle.txtInterMedium20.copyWith(height: 1.00)))
                                          ])))
                            ]))),
                    Expanded(
                        child: SingleChildScrollView(
                            child: Container(
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                          Container(
                              width: double.infinity,
                              margin: getMargin(top: 18),
                              decoration: AppDecoration.fillWhiteA700,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: getPadding(left: 24, right: 24),
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(getHorizontalSize(36.00)),
                                            child: CommonImageView(
                                                imagePath: ImageConstant.imgEllipse6,
                                                height: getSize(72.00),
                                                width: getSize(72.00)))),
                                    Padding(
                                        padding: getPadding(left: 24, top: 24, right: 24),
                                        child: Text("msg_victoria_robert".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterMedium32.copyWith(height: 1.00))),
                                    Padding(
                                        padding: getPadding(left: 24, top: 17, right: 24),
                                        child: Text("lbl_subheading".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterMedium16Gray700.copyWith(height: 1.00))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(left: 24, top: 86, right: 24),
                                            child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text("lbl_profile".tr,
                                                      overflow: TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle.txtInterMedium16Gray900.copyWith(height: 1.00)),
                                                  Padding(
                                                      padding: getPadding(top: 1, bottom: 1),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant.imgArrowright,
                                                          height: getVerticalSize(12.00),
                                                          width: getHorizontalSize(7.00)))
                                                ]))),
                                    Container(
                                        height: getVerticalSize(1.00),
                                        width: getHorizontalSize(327.00),
                                        margin: getMargin(left: 24, top: 20, right: 24),
                                        decoration: BoxDecoration(color: ColorConstant.indigo50)),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(left: 24, top: 20, right: 24),
                                            child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(top: 1),
                                                      child: Text("lbl_change_password".tr,
                                                          overflow: TextOverflow.ellipsis,
                                                          textAlign: TextAlign.left,
                                                          style:
                                                              AppStyle.txtInterMedium16Gray900.copyWith(height: 1.00))),
                                                  Padding(
                                                      padding: getPadding(bottom: 5),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant.imgArrowright,
                                                          height: getVerticalSize(12.00),
                                                          width: getHorizontalSize(7.00)))
                                                ]))),
                                    Container(
                                        height: getVerticalSize(1.00),
                                        width: getHorizontalSize(327.00),
                                        margin: getMargin(left: 24, top: 16, right: 24),
                                        decoration: BoxDecoration(color: ColorConstant.indigo50)),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(left: 24, top: 20, right: 24),
                                            child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text("msg_notification_pr".tr,
                                                      overflow: TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle.txtInterMedium16Gray900.copyWith(height: 1.00)),
                                                  Padding(
                                                      padding: getPadding(top: 1, bottom: 5),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant.imgArrowright,
                                                          height: getVerticalSize(12.00),
                                                          width: getHorizontalSize(7.00)))
                                                ]))),
                                    Container(
                                        height: getVerticalSize(1.00),
                                        width: getHorizontalSize(327.00),
                                        margin: getMargin(left: 24, top: 16, right: 24),
                                        decoration: BoxDecoration(color: ColorConstant.indigo50)),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(left: 24, top: 20, right: 24),
                                            child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(top: 1),
                                                      child: Text("lbl_log_out".tr,
                                                          overflow: TextOverflow.ellipsis,
                                                          textAlign: TextAlign.left,
                                                          style:
                                                              AppStyle.txtInterMedium16Gray900.copyWith(height: 1.00))),
                                                  Padding(
                                                      padding: getPadding(bottom: 5),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant.imgArrowright,
                                                          height: getVerticalSize(12.00),
                                                          width: getHorizontalSize(7.00)))
                                                ]))),
                                  ]))
                        ]))))
                  ],
                ))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
