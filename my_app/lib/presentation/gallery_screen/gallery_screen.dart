import '../gallery_screen/widgets/gallery_item_widget.dart';
import 'controller/gallery_controller.dart';
import 'models/gallery_item_model.dart';
import 'package:flutter/material.dart';
import 'package:my_app/core/app_export.dart';
import 'package:my_app/widgets/custom_text_form_field.dart';

class GalleryScreen extends GetWidget<GalleryController> {
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
                                                  padding: getPadding(left: 117),
                                                  child: Text("lbl_market".tr,
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
                                    controller: controller.inputSearchController4,
                                    hintText: "lbl_search".tr,
                                    margin: getMargin(left: 24, right: 24),
                                    variant: TextFormFieldVariant.FillGray51,
                                    fontStyle: TextFormFieldFontStyle.InterRegular14,
                                    textInputAction: TextInputAction.done,
                                    alignment: Alignment.center),
                                Padding(
                                    padding: getPadding(left: 24, top: 45, right: 24),
                                    child: Text("lbl_hot_deals".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium20.copyWith(height: 1.00))),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                        height: getVerticalSize(210.00),
                                        width: getHorizontalSize(404.00),
                                        child: Obx(() => ListView.builder(
                                            padding: getPadding(left: 10, top: 21),
                                            scrollDirection: Axis.horizontal,
                                            physics: BouncingScrollPhysics(),
                                            itemCount: controller.galleryModelObj.value.galleryItemList.length,
                                            itemBuilder: (context, index) {
                                              GalleryItemModel model =
                                                  controller.galleryModelObj.value.galleryItemList[index];
                                              return GalleryItemWidget(model);
                                            })))),
                                Padding(
                                    padding: getPadding(left: 24, top: 36, right: 24),
                                    child: Text("lbl_trending".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium20.copyWith(height: 1.00))),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        padding: getPadding(left: 10, top: 17),
                                        child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                  margin: getMargin(bottom: 3),
                                                  child: Column(
                                                      mainAxisSize: MainAxisSize.min,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: [
                                                        Container(
                                                            height: getVerticalSize(167.00),
                                                            width: getHorizontalSize(200.00),
                                                            decoration: BoxDecoration(
                                                                color: ColorConstant.gray51,
                                                                borderRadius:
                                                                    BorderRadius.circular(getHorizontalSize(10.00)))),
                                                        Padding(
                                                            padding: getPadding(top: 10, right: 10),
                                                            child: Text("msg_item_1_name_go".tr,
                                                                overflow: TextOverflow.ellipsis,
                                                                textAlign: TextAlign.left,
                                                                style:
                                                                    AppStyle.txtInterRegular14.copyWith(height: 1.00)))
                                                      ])),
                                              Container(
                                                  margin: getMargin(left: 16, bottom: 3),
                                                  child: Column(
                                                      mainAxisSize: MainAxisSize.min,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: [
                                                        CommonImageView(
                                                            imagePath: ImageConstant.imgRectangle30167X200,
                                                            height: getVerticalSize(167.00),
                                                            width: getHorizontalSize(200.00)),
                                                        Padding(
                                                            padding: getPadding(top: 10, right: 10),
                                                            child: Text("msg_item_1_name_go".tr,
                                                                overflow: TextOverflow.ellipsis,
                                                                textAlign: TextAlign.left,
                                                                style:
                                                                    AppStyle.txtInterRegular14.copyWith(height: 1.00)))
                                                      ])),
                                              Container(
                                                  margin: getMargin(left: 16),
                                                  child: Column(
                                                      mainAxisSize: MainAxisSize.min,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: [
                                                        CommonImageView(
                                                            imagePath: ImageConstant.imgRectangle305,
                                                            height: getVerticalSize(167.00),
                                                            width: getHorizontalSize(200.00)),
                                                        Padding(
                                                            padding: getPadding(top: 8, right: 10),
                                                            child: Text("msg_item_1_name_go".tr,
                                                                overflow: TextOverflow.ellipsis,
                                                                textAlign: TextAlign.left,
                                                                style:
                                                                    AppStyle.txtInterRegular14.copyWith(height: 1.43)))
                                                      ]))
                                            ]))),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: size.width,
                                    margin: getMargin(top: 25),
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
