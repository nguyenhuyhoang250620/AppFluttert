import '../feed_screen/widgets/feed_item_widget.dart';
import 'controller/feed_controller.dart';
import 'models/feed_item_model.dart';
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
                                        padding: getPadding(left: 24, top: 27, right: 24),
                                        child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
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
                                                  padding: getPadding(left: 126),
                                                  child: Text("lbl_feed".tr,
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
                                    controller: controller.inputSearchController2,
                                    hintText: "lbl_search".tr,
                                    margin: getMargin(left: 24, right: 24),
                                    variant: TextFormFieldVariant.FillGray51,
                                    fontStyle: TextFormFieldFontStyle.InterRegular14,
                                    textInputAction: TextInputAction.done,
                                    alignment: Alignment.center),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(left: 24, top: 26, right: 24),
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
                                              FeedItemModel model = controller.feedModelObj.value.feedItemList[index];
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
                                      Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Container(
                                              margin: getMargin(top: 10),
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
                              ]))
                    ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
