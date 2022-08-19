import 'controller/log_in_controller.dart';
import 'package:flutter/material.dart';
import 'package:my_app/core/app_export.dart';
import 'package:my_app/core/utils/validation_functions.dart';
import 'package:my_app/widgets/custom_button.dart';
import 'package:my_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LogInScreen extends GetWidget<LogInController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
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
                                                                  padding: getPadding(top: 1, bottom: 10),
                                                                  child: CommonImageView(
                                                                      svgPath: ImageConstant.imgArrowleft,
                                                                      height: getVerticalSize(12.00),
                                                                      width: getHorizontalSize(16.00)))),
                                                          Padding(
                                                              padding: getPadding(left: 122),
                                                              child: Text("lbl_log_in".tr,
                                                                  overflow: TextOverflow.ellipsis,
                                                                  textAlign: TextAlign.left,
                                                                  style:
                                                                      AppStyle.txtInterMedium20.copyWith(height: 1.00)))
                                                        ])))
                                          ])))),
                              CustomTextFormField(
                                  width: 327,
                                  focusNode: FocusNode(),
                                  controller: controller.inputTextController1,
                                  hintText: "lbl_email".tr,
                                  margin: getMargin(left: 24, top: 48, right: 24),
                                  variant: TextFormFieldVariant.OutlineIndigo50,
                                  shape: TextFormFieldShape.RoundedBorder8,
                                  padding: TextFormFieldPadding.PaddingT17,
                                  fontStyle: TextFormFieldFontStyle.InterRegular16,
                                  textInputAction: TextInputAction.done,
                                  validator: (value) {
                                    if (value == null || (!isValidEmail(value, isRequired: true))) {
                                      return "Please enter valid email";
                                    }
                                    return null;
                                  }),
                              Container(
                                  margin: getMargin(left: 24, top: 16, right: 24, bottom: 162),
                                  decoration: AppDecoration.outlineIndigo50
                                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                            padding: getPadding(left: 16, top: 17, bottom: 16),
                                            child: Text("lbl_password".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtInterRegular16Bluegray200.copyWith(height: 1.00))),
                                        Padding(
                                            padding: getPadding(top: 17, right: 16, bottom: 16),
                                            child: Text("lbl_show".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtInterRegular16LightblueA700.copyWith(height: 1.00)))
                                      ])),
                              CustomButton(
                                width: 327,
                                text: "lbl_log_in2".tr,
                                margin: getMargin(left: 24, right: 24),
                                onTap: () {
                                  Navigator.pushNamed(context, '/bottom_screen');
                                },
                              ),
                              Padding(
                                  padding: getPadding(left: 24, top: 22, right: 24, bottom: 20),
                                  child: Text("msg_forgot_your_pas".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterMedium16.copyWith(height: 1.00)))
                            ])))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
