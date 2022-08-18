import 'controller/search_controller.dart';
import 'package:flutter/material.dart';
import 'package:my_app/core/app_export.dart';
import 'package:my_app/widgets/custom_text_form_field.dart';

class SearchScreen extends GetWidget<SearchController> {
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
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
                                        padding: getPadding(left: 24, top: 27, right: 24),
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
                                                      padding: getPadding(top: 2, bottom: 5),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant.imgArrowleft,
                                                          height: getVerticalSize(12.00),
                                                          width: getHorizontalSize(16.00)))),
                                              Padding(
                                                  padding: getPadding(left: 112),
                                                  child: Text("lbl_content".tr,
                                                      overflow: TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle.txtInterMedium20.copyWith(height: 1.00)))
                                            ])))
                              ]))),
                      Container(
                          width: double.infinity,
                          margin: getMargin(top: 52),
                          decoration: AppDecoration.fillWhiteA700,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomTextFormField(
                                    width: 327,
                                    focusNode: FocusNode(),
                                    controller: controller.inputSearchController,
                                    hintText: "lbl_search".tr,
                                    margin: getMargin(left: 24, right: 24),
                                    variant: TextFormFieldVariant.FillGray51,
                                    fontStyle: TextFormFieldFontStyle.InterRegular14,
                                    textInputAction: TextInputAction.done,
                                    alignment: Alignment.center),
                                Padding(
                                    padding: getPadding(left: 24, top: 58, right: 24),
                                    child: Text("lbl_search_result".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular16.copyWith(height: 1.00))),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(327.00),
                                    margin: getMargin(left: 24, top: 15, right: 24),
                                    decoration: BoxDecoration(color: ColorConstant.indigo50)),
                                Padding(
                                    padding: getPadding(left: 24, top: 15, right: 24),
                                    child: Text("lbl_search_result".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular16.copyWith(height: 1.00))),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(327.00),
                                    margin: getMargin(left: 24, top: 15, right: 24),
                                    decoration: BoxDecoration(color: ColorConstant.indigo50)),
                                Padding(
                                    padding: getPadding(left: 24, top: 15, right: 24),
                                    child: Text("lbl_search_result".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular16.copyWith(height: 1.00))),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(327.00),
                                    margin: getMargin(left: 24, top: 15, right: 24),
                                    decoration: BoxDecoration(color: ColorConstant.indigo50)),
                                Padding(
                                    padding: getPadding(left: 24, top: 15, right: 24),
                                    child: Text("lbl_search_result".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular16.copyWith(height: 1.00))),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(327.00),
                                    margin: getMargin(left: 24, top: 15, right: 24),
                                    decoration: BoxDecoration(color: ColorConstant.indigo50)),
                                Padding(
                                    padding: getPadding(left: 24, top: 15, right: 24),
                                    child: Text("lbl_search_result".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular16.copyWith(height: 1.00))),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(327.00),
                                    margin: getMargin(left: 24, top: 15, right: 24),
                                    decoration: BoxDecoration(color: ColorConstant.indigo50)),
                                Padding(
                                    padding: getPadding(left: 24, top: 15, right: 24),
                                    child: Text("lbl_search_result".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular16.copyWith(height: 1.00))),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(327.00),
                                    margin: getMargin(left: 24, top: 15, right: 24),
                                    decoration: BoxDecoration(color: ColorConstant.indigo50)),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: size.width,
                                    margin: getMargin(top: 230),
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
                                                  borderRadius: BorderRadius.circular(getHorizontalSize(10.66)))),
                                          Container(
                                              height: getSize(21.00),
                                              width: getSize(21.00),
                                              margin: getMargin(left: 41, top: 20, bottom: 40),
                                              decoration: BoxDecoration(
                                                  color: ColorConstant.indigo50,
                                                  borderRadius: BorderRadius.circular(getHorizontalSize(10.66)))),
                                          Container(
                                              height: getSize(21.00),
                                              width: getSize(21.00),
                                              margin: getMargin(left: 41, top: 20, bottom: 40),
                                              decoration: BoxDecoration(
                                                  color: ColorConstant.indigo50,
                                                  borderRadius: BorderRadius.circular(getHorizontalSize(10.66)))),
                                          Container(
                                              height: getSize(21.00),
                                              width: getSize(21.00),
                                              margin: getMargin(left: 41, top: 20, bottom: 40),
                                              decoration: BoxDecoration(
                                                  color: ColorConstant.indigo50,
                                                  borderRadius: BorderRadius.circular(getHorizontalSize(10.66)))),
                                          Container(
                                              height: getSize(21.00),
                                              width: getSize(21.00),
                                              margin: getMargin(left: 41, top: 20, bottom: 40),
                                              decoration: BoxDecoration(
                                                  color: ColorConstant.indigo50,
                                                  borderRadius: BorderRadius.circular(getHorizontalSize(10.66))))
                                        ]))
                              ]))
                    ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
