import '../profile_posts_screen/widgets/profile_posts_item_widget.dart';
import 'controller/profile_posts_controller.dart';
import 'models/profile_posts_item_model.dart';
import 'package:flutter/material.dart';
import 'package:my_app/core/app_export.dart';
import 'package:my_app/widgets/custom_button.dart';

class ProfilePostsScreen extends GetWidget<ProfilePostsController> {
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
                                      padding: getPadding(left: 24, top: 26, right: 24),
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
                                            //         padding: getPadding(top: 2, bottom: 5),
                                            //         child: CommonImageView(
                                            //             svgPath: ImageConstant.imgArrowleft,
                                            //             height: getVerticalSize(12.00),
                                            //             width: getHorizontalSize(16.00)))),
                                            Padding(
                                                padding: getPadding(left: 120),
                                                child: Text("lbl_profile".tr,
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
                                margin: getMargin(top: 40),
                                decoration: AppDecoration.fillWhiteA700,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: getPadding(left: 16, right: 16),
                                          child: ClipRRect(
                                              borderRadius: BorderRadius.circular(getHorizontalSize(36.00)),
                                              child: CommonImageView(
                                                  imagePath: ImageConstant.imgEllipse6,
                                                  height: getSize(72.00),
                                                  width: getSize(72.00)))),
                                      Padding(
                                          padding: getPadding(left: 16, top: 38, right: 16),
                                          child: Text("msg_victoria_robert".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterMedium32.copyWith(height: 1.00))),
                                      Padding(
                                          padding: getPadding(left: 16, top: 13, right: 16),
                                          child: Text("lbl_subheading".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterMedium16Gray700.copyWith(height: 1.00))),
                                      Container(
                                          margin: getMargin(left: 16, top: 29, right: 16),
                                          decoration: AppDecoration.fillGray51
                                              .copyWith(borderRadius: BorderRadiusStyle.circleBorder22),
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                CustomButton(
                                                    width: 143,
                                                    text: "lbl_posts".tr,
                                                    margin: getMargin(left: 2, top: 2, bottom: 2),
                                                    variant: ButtonVariant.OutlineBlack90019,
                                                    shape: ButtonShape.CircleBorder20,
                                                    padding: ButtonPadding.PaddingAll12,
                                                    fontStyle: ButtonFontStyle.InterMedium16Gray900),
                                                Padding(
                                                    padding: getPadding(top: 14, right: 47, bottom: 14),
                                                    child: Text("lbl_photos".tr,
                                                        overflow: TextOverflow.ellipsis,
                                                        textAlign: TextAlign.left,
                                                        style: AppStyle.txtInterRegular16Bluegray200
                                                            .copyWith(height: 1.00)))
                                              ])),
                                      Padding(
                                          padding: getPadding(left: 16, top: 33, right: 16),
                                          child: Obx(() => ListView.separated(
                                              physics: BouncingScrollPhysics(),
                                              shrinkWrap: true,
                                              separatorBuilder: (context, index) {
                                                return Container(
                                                    height: getVerticalSize(1.00),
                                                    width: getHorizontalSize(277.00),
                                                    decoration: BoxDecoration(color: ColorConstant.indigo50));
                                              },
                                              itemCount:
                                                  controller.profilePostsModelObj.value.profilePostsItemList.length,
                                              itemBuilder: (context, index) {
                                                ProfilePostsItemModel model =
                                                    controller.profilePostsModelObj.value.profilePostsItemList[index];
                                                return ProfilePostsItemWidget(model);
                                              }))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: getHorizontalSize(277.00),
                                          margin: getMargin(left: 16, top: 10, right: 16),
                                          decoration: BoxDecoration(color: ColorConstant.indigo50)),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                              height: getVerticalSize(83.00),
                                              width: size.width,
                                              margin: getMargin(top: 68),
                                              child: Stack(alignment: Alignment.centerLeft, children: [
                                                Align(
                                                    alignment: Alignment.bottomCenter,
                                                    child: Container(
                                                        margin: getMargin(left: 16, top: 10, right: 16, bottom: 1),
                                                        child: Column(
                                                            mainAxisSize: MainAxisSize.min,
                                                            crossAxisAlignment: CrossAxisAlignment.end,
                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                            children: [
                                                              Align(
                                                                  alignment: Alignment.centerLeft,
                                                                  child: Row(
                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                      mainAxisSize: MainAxisSize.max,
                                                                      children: [
                                                                        Container(
                                                                            height: getSize(50.00),
                                                                            width: getSize(50.00),
                                                                            margin: getMargin(bottom: 17),
                                                                            decoration: BoxDecoration(
                                                                                color: ColorConstant.gray51,
                                                                                borderRadius: BorderRadius.circular(
                                                                                    getHorizontalSize(8.00)))),
                                                                        Container(
                                                                            margin: getMargin(top: 4),
                                                                            child: Column(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                crossAxisAlignment:
                                                                                    CrossAxisAlignment.start,
                                                                                mainAxisAlignment:
                                                                                    MainAxisAlignment.start,
                                                                                children: [
                                                                                  Container(
                                                                                      width: getHorizontalSize(277.00),
                                                                                      child: Row(
                                                                                          mainAxisAlignment:
                                                                                              MainAxisAlignment
                                                                                                  .spaceBetween,
                                                                                          crossAxisAlignment:
                                                                                              CrossAxisAlignment.center,
                                                                                          mainAxisSize:
                                                                                              MainAxisSize.max,
                                                                                          children: [
                                                                                            Padding(
                                                                                                padding: getPadding(
                                                                                                    bottom: 1),
                                                                                                child: Text(
                                                                                                    "lbl_header".tr,
                                                                                                    overflow:
                                                                                                        TextOverflow
                                                                                                            .ellipsis,
                                                                                                    textAlign:
                                                                                                        TextAlign.left,
                                                                                                    style: AppStyle
                                                                                                        .txtInterMedium16Gray900
                                                                                                        .copyWith(
                                                                                                            height:
                                                                                                                1.00))),
                                                                                            Padding(
                                                                                                padding:
                                                                                                    getPadding(top: 2),
                                                                                                child: Text(
                                                                                                    "lbl_8m_ago".tr,
                                                                                                    overflow:
                                                                                                        TextOverflow
                                                                                                            .ellipsis,
                                                                                                    textAlign:
                                                                                                        TextAlign.left,
                                                                                                    style: AppStyle
                                                                                                        .txtInterRegular14Bluegray200
                                                                                                        .copyWith(
                                                                                                            height:
                                                                                                                1.00)))
                                                                                          ])),
                                                                                  Container(
                                                                                      width: getHorizontalSize(260.00),
                                                                                      margin:
                                                                                          getMargin(top: 11, right: 10),
                                                                                      child: Text(
                                                                                          "msg_he_ll_want_to_u".tr,
                                                                                          maxLines: null,
                                                                                          textAlign: TextAlign.left,
                                                                                          style: AppStyle
                                                                                              .txtInterRegular14
                                                                                              .copyWith(height: 1.43)))
                                                                                ]))
                                                                      ])),
                                                            ]))),
                                              ])))
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
