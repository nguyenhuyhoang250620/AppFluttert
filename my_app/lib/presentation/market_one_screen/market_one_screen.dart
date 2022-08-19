import 'controller/market_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:my_app/core/app_export.dart';
import 'package:my_app/widgets/custom_text_form_field.dart';

class MarketOneScreen extends GetWidget<MarketOneController> {
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
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: size.width,
                              child: Container(
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                                      padding: getPadding(left: 103, top: 1),
                                                      child: Text("lbl_messages".tr,
                                                          overflow: TextOverflow.ellipsis,
                                                          textAlign: TextAlign.left,
                                                          style: AppStyle.txtInterMedium20.copyWith(height: 1.00)))
                                                ])))
                                  ])))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: getHorizontalSize(254.00),
                              margin: getMargin(left: 24, top: 48, right: 24),
                              decoration:
                                  AppDecoration.fillGray51.copyWith(borderRadius: BorderRadiusStyle.customBorderTL1612),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: getHorizontalSize(223.00),
                                        margin: getMargin(left: 12, top: 14, right: 12, bottom: 10),
                                        child: Text("msg_lorem_ipsum_dol".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterRegular14.copyWith(height: 1.43)))
                                  ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 24, right: 24),
                              child: CommonImageView(
                                  svgPath: ImageConstant.imgTip,
                                  height: getVerticalSize(8.00),
                                  width: getHorizontalSize(9.00)))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              width: getHorizontalSize(216.00),
                              margin: getMargin(left: 25, top: 20, right: 25),
                              decoration: AppDecoration.fillLightblueA700
                                  .copyWith(borderRadius: BorderRadiusStyle.customBorderTL1612),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            width: getHorizontalSize(182.00),
                                            margin: getMargin(left: 12, top: 14, right: 12, bottom: 10),
                                            child: Text("msg_lorem_ipsum_dol2".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtInterRegular14WhiteA700.copyWith(height: 1.43))))
                                  ]))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: getPadding(left: 25, right: 25),
                              child: CommonImageView(
                                  svgPath: ImageConstant.imgCrop,
                                  height: getVerticalSize(8.00),
                                  width: getHorizontalSize(9.00)))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              width: getHorizontalSize(216.00),
                              margin: getMargin(left: 25, top: 10, right: 25),
                              decoration: AppDecoration.fillLightblueA700
                                  .copyWith(borderRadius: BorderRadiusStyle.customBorderTL1612),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            width: getHorizontalSize(182.00),
                                            margin: getMargin(left: 12, top: 14, right: 12, bottom: 10),
                                            child: Text("msg_lorem_ipsum_dol2".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtInterRegular14WhiteA700.copyWith(height: 1.43))))
                                  ]))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: getPadding(left: 25, right: 25),
                              child: CommonImageView(
                                  svgPath: ImageConstant.imgCrop,
                                  height: getVerticalSize(8.00),
                                  width: getHorizontalSize(9.00)))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: getHorizontalSize(254.00),
                              margin: getMargin(left: 24, top: 20, right: 24),
                              decoration:
                                  AppDecoration.fillGray51.copyWith(borderRadius: BorderRadiusStyle.customBorderTL1612),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: getHorizontalSize(223.00),
                                        margin: getMargin(left: 12, top: 14, right: 12, bottom: 10),
                                        child: Text("msg_lorem_ipsum_dol".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterRegular14.copyWith(height: 1.43)))
                                  ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 24, right: 24),
                              child: CommonImageView(
                                  svgPath: ImageConstant.imgTip,
                                  height: getVerticalSize(8.00),
                                  width: getHorizontalSize(9.00)))),
                      CustomTextFormField(
                          width: 343,
                          focusNode: FocusNode(),
                          controller: controller.inputSearchController5,
                          hintText: "lbl_message_here".tr,
                          margin: getMargin(left: 14, top: 256, right: 14, bottom: 16),
                          variant: TextFormFieldVariant.FillGray51,
                          shape: TextFormFieldShape.CircleBorder25,
                          padding: TextFormFieldPadding.PaddingT17,
                          fontStyle: TextFormFieldFontStyle.InterRegular14,
                          textInputAction: TextInputAction.done,
                          alignment: Alignment.center,
                          suffix: Container(
                              padding: getPadding(left: 12, top: 10, right: 12, bottom: 10),
                              margin: getMargin(left: 30, top: 8, right: 8, bottom: 8),
                              decoration: BoxDecoration(
                                  color: ColorConstant.lightBlueA700,
                                  borderRadius: BorderRadius.circular(getHorizontalSize(17.00))),
                              child: CommonImageView(svgPath: ImageConstant.imgVector)),
                          suffixConstraints:
                              BoxConstraints(minWidth: getHorizontalSize(10.00), minHeight: getVerticalSize(14.00)))
                    ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
