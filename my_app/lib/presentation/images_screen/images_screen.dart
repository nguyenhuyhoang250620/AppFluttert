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
                                                                borderRadius:
                                                                    BorderRadius.circular(getHorizontalSize(3.00)),
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
                                      Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                              margin: getMargin(top: 101, bottom: 101),
                                              child: Column(
                                                  mainAxisSize: MainAxisSize.min,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                        height: getVerticalSize(1.00),
                                                        width: size.width,
                                                        decoration: BoxDecoration(color: ColorConstant.bluegray200)),
                                                    Container(
                                                        decoration: AppDecoration.fillGray50,
                                                        child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            mainAxisSize: MainAxisSize.max,
                                                            children: [
                                                              Container(
                                                                  height: getSize(21.00),
                                                                  width: getSize(21.00),
                                                                  margin: getMargin(left: 57, top: 20, bottom: 40),
                                                                  decoration: BoxDecoration(
                                                                      color: ColorConstant.lightBlueA700,
                                                                      borderRadius: BorderRadius.circular(
                                                                          getHorizontalSize(10.66)))),
                                                              Container(
                                                                  height: getSize(21.00),
                                                                  width: getSize(21.00),
                                                                  margin: getMargin(left: 41, top: 20, bottom: 40),
                                                                  decoration: BoxDecoration(
                                                                      color: ColorConstant.indigo50,
                                                                      borderRadius: BorderRadius.circular(
                                                                          getHorizontalSize(10.66)))),
                                                              Container(
                                                                  height: getSize(21.00),
                                                                  width: getSize(21.00),
                                                                  margin: getMargin(left: 41, top: 20, bottom: 40),
                                                                  decoration: BoxDecoration(
                                                                      color: ColorConstant.indigo50,
                                                                      borderRadius: BorderRadius.circular(
                                                                          getHorizontalSize(10.66)))),
                                                              Container(
                                                                  height: getSize(21.00),
                                                                  width: getSize(21.00),
                                                                  margin: getMargin(left: 41, top: 20, bottom: 40),
                                                                  decoration: BoxDecoration(
                                                                      color: ColorConstant.indigo50,
                                                                      borderRadius: BorderRadius.circular(
                                                                          getHorizontalSize(10.66)))),
                                                              Container(
                                                                  height: getSize(21.00),
                                                                  width: getSize(21.00),
                                                                  margin: getMargin(left: 41, top: 20, bottom: 40),
                                                                  decoration: BoxDecoration(
                                                                      color: ColorConstant.indigo50,
                                                                      borderRadius: BorderRadius.circular(
                                                                          getHorizontalSize(10.66))))
                                                            ]))
                                                  ])))
                                    ]))
                              ]))))
                ]))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
