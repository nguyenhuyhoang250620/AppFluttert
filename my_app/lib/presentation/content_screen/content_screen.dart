import 'controller/content_controller.dart';
import 'package:flutter/material.dart';
import 'package:my_app/core/app_export.dart';
import 'package:my_app/widgets/custom_text_form_field.dart';

class ContentScreen extends GetWidget<ContentController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
              child: Column(
                children: [
                  Container(
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: getPadding(left: 24, top: 27, right: 24),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                      padding: getPadding(left: 112),
                                      child: Text("lbl_content".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterMedium20.copyWith(height: 1.00)))
                                ]))),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                        child: Container(
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                          Container(
                              width: double.infinity,
                              margin: getMargin(top: 52),
                              decoration: AppDecoration.fillWhiteA700,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomTextFormField(
                                        width: 327,
                                        focusNode: FocusNode(),
                                        // controller: controller.inputSearchController1,
                                        hintText: "lbl_search".tr,
                                        margin: getMargin(left: 24, right: 24),
                                        variant: TextFormFieldVariant.FillGray51,
                                        fontStyle: TextFormFieldFontStyle.InterRegular14,
                                        textInputAction: TextInputAction.done),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            height: getVerticalSize(1000.00),
                                            width: size.width,
                                            child: Stack(alignment: Alignment.bottomLeft, children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                      margin: getMargin(left: 24, right: 24),
                                                      child: Column(
                                                          mainAxisSize: MainAxisSize.min,
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                          children: [
                                                            Container(
                                                                height: getVerticalSize(240.00),
                                                                width: getHorizontalSize(327.00),
                                                                decoration: BoxDecoration(
                                                                    color: ColorConstant.gray51,
                                                                    borderRadius: BorderRadius.circular(
                                                                        getHorizontalSize(10.00)))),
                                                            Padding(
                                                                padding: getPadding(top: 12, right: 10),
                                                                child: Text("lbl_header".tr,
                                                                    overflow: TextOverflow.ellipsis,
                                                                    textAlign: TextAlign.left,
                                                                    style: AppStyle.txtInterMedium16Gray900
                                                                        .copyWith(height: 1.00))),
                                                            Container(
                                                                width: getHorizontalSize(327.00),
                                                                margin: getMargin(top: 16),
                                                                child: Text("msg_he_ll_want_to_u".tr,
                                                                    maxLines: null,
                                                                    textAlign: TextAlign.left,
                                                                    style: AppStyle.txtInterRegular14
                                                                        .copyWith(height: 1.43))),
                                                            Padding(
                                                                padding: getPadding(top: 12, right: 10),
                                                                child: Text("lbl_8m_ago".tr,
                                                                    overflow: TextOverflow.ellipsis,
                                                                    textAlign: TextAlign.left,
                                                                    style: AppStyle.txtInterRegular14Bluegray200
                                                                        .copyWith(height: 1.00))),
                                                            Container(
                                                                height: getVerticalSize(240.00),
                                                                width: getHorizontalSize(327.00),
                                                                margin: getMargin(top: 17),
                                                                decoration: BoxDecoration(
                                                                    color: ColorConstant.gray51,
                                                                    borderRadius: BorderRadius.circular(
                                                                        getHorizontalSize(10.00)))),
                                                            Padding(
                                                                padding: getPadding(top: 8, right: 10),
                                                                child: Text("lbl_header".tr,
                                                                    overflow: TextOverflow.ellipsis,
                                                                    textAlign: TextAlign.left,
                                                                    style: AppStyle.txtInterMedium16Gray900
                                                                        .copyWith(height: 1.50))),
                                                            Container(
                                                                width: getHorizontalSize(253.00),
                                                                margin: getMargin(top: 8, right: 10),
                                                                child: Text("msg_he_ll_want_to_u".tr,
                                                                    maxLines: null,
                                                                    textAlign: TextAlign.left,
                                                                    style: AppStyle.txtInterRegular14
                                                                        .copyWith(height: 1.43))),
                                                            Padding(
                                                                padding: getPadding(top: 8, right: 10),
                                                                child: Text("lbl_8m_ago".tr,
                                                                    overflow: TextOverflow.ellipsis,
                                                                    textAlign: TextAlign.right,
                                                                    style: AppStyle.txtInterRegular14Bluegray200
                                                                        .copyWith(height: 1.43)))
                                                          ]))),
                                            ])))
                                  ]))
                        ]))),
                  )
                ],
              ),
            )));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
