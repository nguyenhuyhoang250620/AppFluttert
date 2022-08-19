import 'controller/images_controller.dart';
import 'package:flutter/material.dart';
import 'package:my_app/core/app_export.dart';

class ImagesScreen extends GetWidget<ImagesController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
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
                                    padding: getPadding(left: 24, top: 29, right: 24),
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
                                          //         padding: getPadding(bottom: 10),
                                          //         child: CommonImageView(
                                          //             svgPath: ImageConstant.imgArrowleft,
                                          //             height: getVerticalSize(12.00),
                                          //             width: getHorizontalSize(16.00)))),
                                          Padding(
                                              padding: getPadding(left: 116, top: 1),
                                              child: Text("lbl_images".tr,
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle.txtInterMedium20.copyWith(height: 1.00)))
                                        ])))
                          ]))),
                  Expanded(
                      child: SingleChildScrollView(
                          padding: getPadding(top: 46),
                          child: Container(
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(left: 24, right: 24),
                                        child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                  height: getVerticalSize(128.00),
                                                  width: getHorizontalSize(91.00),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant.gray51,
                                                      borderRadius: BorderRadius.circular(getHorizontalSize(8.00)))),
                                              Container(
                                                  height: getVerticalSize(128.00),
                                                  width: getHorizontalSize(220.00),
                                                  margin: getMargin(left: 15),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant.gray51,
                                                      borderRadius: BorderRadius.circular(getHorizontalSize(8.00))))
                                            ]))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        height: getVerticalSize(198.00),
                                        width: getHorizontalSize(327.00),
                                        margin: getMargin(left: 24, top: 16, right: 24),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.gray51,
                                            borderRadius: BorderRadius.circular(getHorizontalSize(8.00))))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(left: 24, top: 16, right: 24),
                                        child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                  height: getVerticalSize(128.00),
                                                  width: getHorizontalSize(155.00),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant.gray51,
                                                      borderRadius: BorderRadius.circular(getHorizontalSize(8.00)))),
                                              Container(
                                                  height: getVerticalSize(128.00),
                                                  width: getHorizontalSize(156.00),
                                                  margin: getMargin(left: 15),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant.gray51,
                                                      borderRadius: BorderRadius.circular(getHorizontalSize(8.00))))
                                            ]))),
                                Container(
                                    height: getVerticalSize(342.00),
                                    width: size.width,
                                    margin: getMargin(top: 16),
                                    child: Stack(alignment: Alignment.topLeft, children: [
                                      Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                              height: getVerticalSize(128.00),
                                              width: getHorizontalSize(91.00),
                                              margin: getMargin(left: 24, right: 24, bottom: 10),
                                              decoration: BoxDecoration(
                                                  color: ColorConstant.gray51,
                                                  borderRadius: BorderRadius.circular(getHorizontalSize(8.00))))),
                                      Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                              height: getVerticalSize(128.00),
                                              width: getHorizontalSize(220.00),
                                              margin: getMargin(left: 24, right: 24, bottom: 10),
                                              decoration: BoxDecoration(
                                                  color: ColorConstant.gray51,
                                                  borderRadius: BorderRadius.circular(getHorizontalSize(8.00))))),
                                      Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                              height: getVerticalSize(198.00),
                                              width: getHorizontalSize(327.00),
                                              margin: getMargin(left: 24, top: 10, right: 24),
                                              decoration: BoxDecoration(
                                                  color: ColorConstant.gray51,
                                                  borderRadius: BorderRadius.circular(getHorizontalSize(8.00))))),
                                    ]))
                              ]))))
                ]))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
