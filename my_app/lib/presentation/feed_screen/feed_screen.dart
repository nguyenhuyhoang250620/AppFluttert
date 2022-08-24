import 'package:my_app/presentation/feed_screen/models/feed_item_model.dart';
import 'package:my_app/presentation/feed_screen/widgets/feed_item_widget.dart';
import '../feed_screen/widgets/feed_item_widget.dart';
import 'controller/feed_controller.dart';
import 'package:flutter/material.dart';
import 'package:my_app/core/app_export.dart';
import 'package:my_app/widgets/custom_text_form_field.dart';

class FeedScreen extends GetWidget<FeedController> {
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
                                      padding: getPadding(left: 24, top: 27, right: 24),
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Padding(
                                                padding: getPadding(left: 126),
                                                child: Text("lbl_feed".tr,
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
                                          controller: controller.inputSearchController2,
                                          hintText: "lbl_search".tr,
                                          margin: getMargin(left: 10, right: 24),
                                          variant: TextFormFieldVariant.FillGray51,
                                          fontStyle: TextFormFieldFontStyle.InterRegular14,
                                          textInputAction: TextInputAction.done,
                                          alignment: Alignment.center),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                              padding: getPadding(left: 10, top: 26, right: 24),
                                              child: Obx(() => ListView.separated(
                                                  physics: BouncingScrollPhysics(),
                                                  shrinkWrap: true,
                                                  separatorBuilder: (context, index) {
                                                    return Container(
                                                        height: getVerticalSize(1.00),
                                                        width: getHorizontalSize(261.00),
                                                        decoration: BoxDecoration(color: ColorConstant.indigo50));
                                                  },
                                                  itemCount: controller.feedModelObj.value.feedItemList.length,
                                                  itemBuilder: (context, index) {
                                                    FeedItemModel model =
                                                        controller.feedModelObj.value.feedItemList[index];
                                                    return FeedItemWidget(model);
                                                  })))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: getHorizontalSize(261.00),
                                          margin: getMargin(left: 24, top: 10, right: 24),
                                          decoration: BoxDecoration(color: ColorConstant.indigo50)),
                                      Container(
                                          height: getVerticalSize(242.00),
                                          width: size.width,
                                          margin: getMargin(top: 19),
                                          child: Stack(alignment: Alignment.bottomLeft, children: [
                                            Align(
                                                alignment: Alignment.topCenter,
                                                child: Container(
                                                    height: getVerticalSize(227.00),
                                                    width: getHorizontalSize(343.00),
                                                    margin: getMargin(left: 16, right: 16, bottom: 10),
                                                    decoration: BoxDecoration(
                                                        color: ColorConstant.gray200,
                                                        borderRadius: BorderRadius.circular(getHorizontalSize(8.00))))),
                                          ]))
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
