import 'dart:ffi';

import 'package:flutter/foundation.dart';

import 'controller/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:my_app/core/app_export.dart';
import 'package:my_app/core/utils/validation_functions.dart';
import 'package:my_app/widgets/custom_button.dart';
import 'package:my_app/widgets/custom_text_form_field.dart';
import 'package:get/get.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SignUpScreen();
  }
}

class _SignUpScreen extends State<SignUpScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
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
                                                                  Padding(
                                                                      padding: getPadding(left: 115),
                                                                      child: Text("lbl_sign_up".tr,
                                                                          overflow: TextOverflow.ellipsis,
                                                                          textAlign: TextAlign.left,
                                                                          style: AppStyle.txtInterMedium20
                                                                              .copyWith(height: 1.00)))
                                                                ])))
                                                  ])))),
                                      CustomTextFormField(
                                          width: 327,
                                          focusNode: FocusNode(),
                                          // controller: controller.inputTextController,
                                          hintText: "lbl_name".tr,
                                          margin: getMargin(left: 24, top: 48, right: 24),
                                          variant: TextFormFieldVariant.OutlineIndigo50,
                                          shape: TextFormFieldShape.RoundedBorder8,
                                          padding: TextFormFieldPadding.PaddingT17,
                                          fontStyle: TextFormFieldFontStyle.InterRegular16,
                                          validator: (value) {
                                            if (!isText(value)) {
                                              return "Please enter valid text";
                                            }
                                            return null;
                                          }),
                                      CustomTextFormField(
                                          width: 327,
                                          focusNode: FocusNode(),
                                          // controller: controller.inputTextOneController,
                                          hintText: "lbl_email".tr,
                                          margin: getMargin(left: 24, top: 16, right: 24),
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
                                          margin: getMargin(left: 24, top: 16, right: 24),
                                          decoration: AppDecoration.outlineIndigo50
                                              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                CustomTextFormField(
                                                    width: 260,
                                                    focusNode: FocusNode(),
                                                    // controller: controller.inputTextController,
                                                    hintText: "lbl_password".tr,
                                                    variant: TextFormFieldVariant.OutlineIndigo50,
                                                    shape: TextFormFieldShape.RoundedBorder8,
                                                    padding: TextFormFieldPadding.PaddingT17,
                                                    fontStyle: TextFormFieldFontStyle.InterRegular16,
                                                    textInputAction: TextInputAction.done,
                                                    validator: (value) {
                                                      if (!isText(value)) {
                                                        return "Please enter valid text";
                                                      }
                                                      return null;
                                                    }),
                                                Padding(
                                                  padding: getPadding(),
                                                  child: TextButton(
                                                    onPressed: () {},
                                                    child: Text("lbl_show".tr,
                                                        overflow: TextOverflow.ellipsis,
                                                        textAlign: TextAlign.left,
                                                        style: AppStyle.txtInterRegular16LightblueA700
                                                            .copyWith(height: 1.00)),
                                                  ),
                                                )
                                              ])),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: getPadding(left: 26, top: 32, right: 26, bottom: 32),
                                              child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  mainAxisSize: MainAxisSize.max,
                                                  children: [
                                                    Checkbox(
                                                      checkColor: Colors.white,
                                                      value: isChecked,
                                                      onChanged: (bool? value) {
                                                        setState(() {
                                                          isChecked = value!;
                                                        });
                                                      },
                                                    ),
                                                    Container(
                                                        width: getHorizontalSize(250.00),
                                                        margin: getMargin(left: 8, top: 4),
                                                        child: Text("msg_i_would_like_to".tr,
                                                            maxLines: null,
                                                            textAlign: TextAlign.left,
                                                            style: AppStyle.txtInterRegular14.copyWith(height: 1.43)))
                                                  ]))),
                                      CustomButton(
                                          onTap: () {
                                            Navigator.pushNamed(context, '/log_in_screen');
                                          },
                                          width: 327,
                                          text: "lbl_sign_up2".tr,
                                          margin: getMargin(left: 24, right: 24)),
                                      Padding(
                                          padding: getPadding(left: 24, top: 22, right: 24, bottom: 20),
                                          child: Text("msg_forgot_your_pas".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterMedium16.copyWith(height: 1.00)))
                                    ]))))),
                  )
                ],
              ),
            )));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
