import 'controller/blog_post_controller.dart';
import 'package:flutter/material.dart';
import 'package:my_app/core/app_export.dart';

class BlogPostScreen extends GetWidget<BlogPostController> {
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
                      child: Align(
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
                                            padding: getPadding(left: 24, top: 27, right: 24),
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
                                                      padding: getPadding(left: 112),
                                                      child: Text("lbl_content".tr,
                                                          overflow: TextOverflow.ellipsis,
                                                          textAlign: TextAlign.left,
                                                          style: AppStyle.txtInterMedium20.copyWith(height: 1.00)))
                                                ])))
                                  ])))),
                    ),
                    Expanded(
                        child: SingleChildScrollView(
                            child: Container(
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                          Container(
                              height: getVerticalSize(356.00),
                              width: getHorizontalSize(327.00),
                              margin: getMargin(left: 24, top: 25, right: 24),
                              decoration: BoxDecoration(
                                  color: ColorConstant.gray51,
                                  borderRadius: BorderRadius.circular(getHorizontalSize(8.00)))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(left: 24, top: 34, right: 24),
                                  child: Text("msg_post_title_here".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterMedium24Gray900.copyWith(height: 1.00)))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(left: 24, top: 11, right: 24),
                                  child: Text("lbl_author".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterMedium16Gray900.copyWith(height: 1.00)))),
                          Container(
                              width: getHorizontalSize(327.00),
                              margin: getMargin(left: 24, top: 20, right: 24),
                              child: Text("msg_labore_sunt_ven".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular16Gray700.copyWith(height: 1.50)))
                        ]))))
                  ],
                ))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
