import '../rating_dialog/controller/rating_controller.dart';
import 'controller/radios_controller.dart';
import 'package:flutter/material.dart';
import 'package:my_app/core/app_export.dart';
import 'package:my_app/widgets/custom_button.dart';
import 'package:my_app/widgets/custom_text_form_field.dart';
import 'package:my_app/presentation/rating_dialog/rating_dialog.dart';

class RadiosScreen extends GetWidget<RadiosController> {
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
                                            //         padding: getPadding(top: 1, bottom: 10),
                                            //         child: CommonImageView(
                                            //             svgPath: ImageConstant.imgArrowleft,
                                            //             height: getVerticalSize(12.00),
                                            //             width: getHorizontalSize(16.00)))),
                                            Padding(
                                                padding: getPadding(left: 91),
                                                child: Text("lbl_user_options".tr,
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle.txtInterMedium20.copyWith(height: 1.00)))
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
                                margin: getMargin(top: 64),
                                decoration: AppDecoration.fillWhiteA700,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomTextFormField(
                                          width: 327,
                                          focusNode: FocusNode(),
                                          controller: controller.radioSelecteController,
                                          hintText: "msg_radio_option_he".tr,
                                          margin: getMargin(left: 24, right: 24),
                                          padding: TextFormFieldPadding.PaddingTB14,
                                          alignment: Alignment.center),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                              height: getVerticalSize(36.00),
                                              width: getHorizontalSize(327.00),
                                              margin: getMargin(left: 24, top: 12, right: 24),
                                              child: Stack(alignment: Alignment.topRight, children: [
                                                CustomTextFormField(
                                                    width: 327,
                                                    focusNode: FocusNode(),
                                                    controller: controller.groupTwentyFiveController,
                                                    hintText: "msg_radio_option_he".tr,
                                                    margin: getMargin(top: 10),
                                                    padding: TextFormFieldPadding.PaddingB14,
                                                    alignment: Alignment.bottomLeft),
                                                Align(
                                                    alignment: Alignment.topRight,
                                                    child: Container(
                                                        height: getSize(20.00),
                                                        width: getSize(20.00),
                                                        margin: getMargin(left: 10, bottom: 10),
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius.circular(getHorizontalSize(10.00)),
                                                            border: Border.all(
                                                                color: ColorConstant.bluegray200,
                                                                width: getHorizontalSize(1.00)))))
                                              ]))),
                                      CustomTextFormField(
                                          width: 327,
                                          focusNode: FocusNode(),
                                          controller: controller.radioSelecteOneController,
                                          hintText: "msg_radio_option_he".tr,
                                          margin: getMargin(left: 24, top: 14, right: 24),
                                          padding: TextFormFieldPadding.PaddingTB14,
                                          alignment: Alignment.center),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                              height: getVerticalSize(36.00),
                                              width: getHorizontalSize(327.00),
                                              margin: getMargin(left: 24, top: 12, right: 24),
                                              child: Stack(alignment: Alignment.topRight, children: [
                                                CustomTextFormField(
                                                    width: 327,
                                                    focusNode: FocusNode(),
                                                    controller: controller.groupTwentyNineController,
                                                    hintText: "msg_radio_option_he".tr,
                                                    margin: getMargin(top: 10),
                                                    padding: TextFormFieldPadding.PaddingB14,
                                                    alignment: Alignment.bottomLeft),
                                                Align(
                                                    alignment: Alignment.topRight,
                                                    child: Container(
                                                        height: getSize(20.00),
                                                        width: getSize(20.00),
                                                        margin: getMargin(left: 10, bottom: 10),
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius.circular(getHorizontalSize(10.00)),
                                                            border: Border.all(
                                                                color: ColorConstant.bluegray200,
                                                                width: getHorizontalSize(1.00)))))
                                              ]))),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                              height: getVerticalSize(36.00),
                                              width: getHorizontalSize(327.00),
                                              margin: getMargin(left: 24, top: 12, right: 24),
                                              child: Stack(alignment: Alignment.topRight, children: [
                                                CustomTextFormField(
                                                    width: 327,
                                                    focusNode: FocusNode(),
                                                    controller: controller.groupThirtyOneController,
                                                    hintText: "msg_radio_option_he".tr,
                                                    margin: getMargin(top: 10),
                                                    padding: TextFormFieldPadding.PaddingB14,
                                                    alignment: Alignment.bottomLeft),
                                                Align(
                                                    alignment: Alignment.topRight,
                                                    child: Container(
                                                        height: getSize(20.00),
                                                        width: getSize(20.00),
                                                        margin: getMargin(left: 10, bottom: 10),
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius.circular(getHorizontalSize(10.00)),
                                                            border: Border.all(
                                                                color: ColorConstant.bluegray200,
                                                                width: getHorizontalSize(1.00)))))
                                              ]))),
                                      CustomTextFormField(
                                          width: 327,
                                          focusNode: FocusNode(),
                                          controller: controller.radioSelecteTwoController,
                                          hintText: "msg_radio_option_he".tr,
                                          margin: getMargin(left: 24, top: 14, right: 24),
                                          padding: TextFormFieldPadding.PaddingTB14,
                                          textInputAction: TextInputAction.done,
                                          alignment: Alignment.center),
                                      CustomButton(
                                          width: 327,
                                          text: "lbl_i_love_it".tr,
                                          margin: getMargin(left: 24, top: 224, right: 24),
                                          alignment: Alignment.center,
                                          onTap: () {
                                            Get.defaultDialog(
                                              title: '',
                                              content: RatingDialog(
                                                Get.put(
                                                  RatingController(),
                                                ),
                                              ),
                                            );
                                          },
                                        ),                                         
                                    ]))
                          ]))),
                    )
                  ],
                ))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
