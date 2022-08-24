import '../insights_screen/widgets/insights_item_widget.dart';
import 'controller/insights_controller.dart';
import 'models/insights_item_model.dart';
import 'package:flutter/material.dart';
import 'package:my_app/core/app_export.dart';

class InsightsScreen extends GetWidget<InsightsController> {
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
                                      padding: getPadding(left: 114),
                                      child: Text("lbl_insights".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterMedium20.copyWith(height: 1.00)))
                                ]))),
                  ),
                  Expanded(
                    child: Container(
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
                                                    children: []))),
                                      ]))),
                              Container(
                                  width: double.infinity,
                                  margin: getMargin(top: 48),
                                  decoration: AppDecoration.fillWhiteA700,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                height: getSize(196.00),
                                                width: getSize(196.00),
                                                margin: getMargin(left: 24, right: 24),
                                                child: Stack(alignment: Alignment.bottomCenter, children: [
                                                  Align(
                                                      alignment: Alignment.centerLeft,
                                                      child: Container(
                                                          height: getSize(196.00),
                                                          width: getSize(196.00),
                                                          child: CircularProgressIndicator(
                                                              value: 0.5, strokeWidth: getHorizontalSize(3.00)))),
                                                  Align(
                                                      alignment: Alignment.bottomCenter,
                                                      child: Container(
                                                          margin: getMargin(left: 58, top: 67, right: 58, bottom: 67),
                                                          child: Column(
                                                              mainAxisSize: MainAxisSize.min,
                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                              children: [
                                                                Text("lbl_32_01".tr,
                                                                    overflow: TextOverflow.ellipsis,
                                                                    textAlign: TextAlign.left,
                                                                    style: AppStyle.txtInterMedium24.copyWith()),
                                                                Padding(
                                                                    padding: getPadding(left: 14, top: 10, right: 11),
                                                                    child: Text("lbl_70_spent".tr,
                                                                        overflow: TextOverflow.ellipsis,
                                                                        textAlign: TextAlign.left,
                                                                        style: AppStyle.txtInterRegular10.copyWith()))
                                                              ])))
                                                ]))),
                                        Padding(
                                            padding: getPadding(left: 24, top: 37, right: 24),
                                            child: Text("lbl_expenses".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtInterMedium24Gray900.copyWith())),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: getPadding(left: 24, top: 47, right: 24),
                                                child: Obx(() => ListView.separated(
                                                    physics: BouncingScrollPhysics(),
                                                    shrinkWrap: true,
                                                    separatorBuilder: (context, index) {
                                                      return Container(
                                                        height: getVerticalSize(1.00),
                                                        width: getHorizontalSize(327.00),
                                                        decoration: BoxDecoration(color: ColorConstant.indigo50),
                                                      );
                                                    },
                                                    itemCount:
                                                        controller.insightsModelObj.value.insightsItemList.length,
                                                    itemBuilder: (context, index) {
                                                      InsightsItemModel model =
                                                          controller.insightsModelObj.value.insightsItemList[index];
                                                      return InsightsItemWidget(model);
                                                    })))),
                                      ]))
                            ])))),
                  ),
                ],
              ),
            )));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
