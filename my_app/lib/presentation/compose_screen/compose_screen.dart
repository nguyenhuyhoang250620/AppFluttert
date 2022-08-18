import 'controller/compose_controller.dart';
import 'package:flutter/material.dart';
import 'package:my_app/core/app_export.dart';
import 'package:my_app/widgets/custom_button.dart';

class ComposeScreen extends GetWidget<ComposeController> {
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
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: size.width,
                              child: Container(
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                            padding: getPadding(left: 14, top: 17, right: 14),
                                            child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(bottom: 1),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant.imgMusic,
                                                          height: getVerticalSize(11.00),
                                                          width: getHorizontalSize(28.00))),
                                                  Padding(
                                                      padding: getPadding(left: 231, top: 1, bottom: 1),
                                                      child: Row(
                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                          mainAxisSize: MainAxisSize.min,
                                                          children: [
                                                            Padding(
                                                                padding: getPadding(top: 1, bottom: 1),
                                                                child: CommonImageView(
                                                                    svgPath: ImageConstant.imgMobilesignal,
                                                                    height: getVerticalSize(10.00),
                                                                    width: getHorizontalSize(17.00))),
                                                            Padding(
                                                                padding: getPadding(left: 5, bottom: 1),
                                                                child: CommonImageView(
                                                                    svgPath: ImageConstant.imgWifi,
                                                                    height: getVerticalSize(10.00),
                                                                    width: getHorizontalSize(15.00))),
                                                            Padding(
                                                                padding: getPadding(left: 5),
                                                                child: Container(
                                                                    height: getVerticalSize(11.00),
                                                                    width: getHorizontalSize(22.00),
                                                                    child: ClipRRect(
                                                                        borderRadius: BorderRadius.circular(
                                                                            getHorizontalSize(3.00)),
                                                                        child: LinearProgressIndicator(
                                                                            value: 0.82,
                                                                            valueColor: AlwaysStoppedAnimation<Color>(
                                                                                ColorConstant.gray900))))),
                                                            Padding(
                                                                padding: getPadding(left: 1, top: 3, bottom: 3),
                                                                child: CommonImageView(
                                                                    svgPath: ImageConstant.imgCombinedshape,
                                                                    height: getVerticalSize(4.00),
                                                                    width: getHorizontalSize(1.00)))
                                                          ]))
                                                ]))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: getPadding(left: 24, top: 29, right: 24),
                                            child: Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  GestureDetector(
                                                      onTap: () {
                                                        onTapImgArrowleft();
                                                      },
                                                      child: Padding(
                                                          padding: getPadding(bottom: 10),
                                                          child: CommonImageView(
                                                              svgPath: ImageConstant.imgArrowleft,
                                                              height: getVerticalSize(12.00),
                                                              width: getHorizontalSize(16.00)))),
                                                  Padding(
                                                      padding: getPadding(left: 105, top: 1),
                                                      child: Text("lbl_compose".tr,
                                                          overflow: TextOverflow.ellipsis,
                                                          textAlign: TextAlign.left,
                                                          style: AppStyle.txtInterMedium20.copyWith(height: 1.00)))
                                                ])))
                                  ])))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 24, top: 66, right: 24),
                              child: Text("msg_compose_your_me".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterMedium16Bluegray200.copyWith()))),
                      CustomButton(
                          width: 327, text: "lbl_send".tr, margin: getMargin(left: 24, top: 278, right: 24, bottom: 20))
                    ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
