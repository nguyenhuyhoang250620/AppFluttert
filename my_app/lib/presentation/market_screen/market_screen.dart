import '../market_screen/widgets/listrectanglethirty_eight_item_widget.dart';
import '../market_screen/widgets/listrectanglethirty_four_item_widget.dart';
import '../market_screen/widgets/listrectanglethirty_item_widget.dart';
import 'controller/market_controller.dart';
import 'models/listrectanglethirty_eight_item_model.dart';
import 'models/listrectanglethirty_four_item_model.dart';
import 'models/listrectanglethirty_item_model.dart';
import 'package:flutter/material.dart';
import 'package:my_app/core/app_export.dart';
import 'package:my_app/widgets/custom_text_form_field.dart';

class MarketScreen extends GetWidget<MarketController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
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
                                              padding: getPadding(left: 117),
                                              child: Text("lbl_market".tr,
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle.txtInterMedium20.copyWith(height: 1.00)))
                                        ])))
                          ]))),
                  Expanded(
                      child: SingleChildScrollView(
                          padding: getPadding(top: 52),
                          child: Container(
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                CustomTextFormField(
                                    width: 327,
                                    focusNode: FocusNode(),
                                    // controller: controller.inputSearchController3,
                                    hintText: "lbl_search".tr,
                                    margin: getMargin(left: 24, right: 24),
                                    variant: TextFormFieldVariant.FillGray51,
                                    fontStyle: TextFormFieldFontStyle.InterRegular14,
                                    textInputAction: TextInputAction.done,
                                    alignment: Alignment.center),
                                Padding(
                                    padding: getPadding(left: 24, top: 44, right: 24),
                                    child: Text("lbl_hot_deals".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium24Gray900.copyWith())),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                        height: getVerticalSize(200.00),
                                        width: getHorizontalSize(351.00),
                                        margin: getMargin(left: 10, top: 18),
                                        child: Stack(alignment: Alignment.centerRight, children: [
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Container(
                                                  height: getVerticalSize(200.00),
                                                  width: getHorizontalSize(404.00),
                                                  child: Obx(() => ListView.builder(
                                                      scrollDirection: Axis.horizontal,
                                                      physics: BouncingScrollPhysics(),
                                                      itemCount: this.controller
                                                          .marketModelObj.value.listrectanglethirtyItemList.length,
                                                      itemBuilder: (context, index) {
                                                        ListrectanglethirtyItemModel model = controller
                                                            .marketModelObj.value.listrectanglethirtyItemList[index];
                                                        return ListrectanglethirtyItemWidget(model);
                                                      })))),
                                          // Align(
                                          //     alignment:
                                          //         Alignment.centerRight,
                                          //     child: SingleChildScrollView(
                                          //         scrollDirection:
                                          //             Axis.horizontal,
                                          //         padding:
                                          //             getPadding(left: 10),
                                          //         child: Container(
                                          //             child: Column(
                                          //                 mainAxisSize:
                                          //                     MainAxisSize
                                          //                         .min,
                                          //                 crossAxisAlignment:
                                          //                     CrossAxisAlignment
                                          //                         .start,
                                          //                 mainAxisAlignment:
                                          //                     MainAxisAlignment
                                          //                         .start,
                                          //                 children: [
                                          //               // CommonImageView(
                                          //               //     imagePath:
                                          //               //         ImageConstant
                                          //               //             .imgRectangle30110X124,
                                          //               //     height:
                                          //               //         getVerticalSize(
                                          //               //             110.00),
                                          //               //     width:
                                          //               //         getHorizontalSize(
                                          //               //             124.00)),
                                          //               // Container(
                                          //               //     width:
                                          //               //         getHorizontalSize(
                                          //               //             124.00),
                                          //               //     margin: getMargin(
                                          //               //         top: 4),
                                          //               //     child: Text(
                                          //               //         "msg_item_1_name_go"
                                          //               //             .tr,
                                          //               //         maxLines:
                                          //               //             null,
                                          //               //         textAlign:
                                          //               //             TextAlign
                                          //               //                 .left,
                                          //               //         style: AppStyle
                                          //               //             .txtInterRegular14
                                          //               //             .copyWith(
                                          //               //                 height:
                                          //               //                     1.43))),
                                          //               // Padding(
                                          //               //     padding:
                                          //               //         getPadding(
                                          //               //             top: 4,
                                          //               //             right:
                                          //               //                 10),
                                          //               //     child: Text(
                                          //               //         "lbl_19_99"
                                          //               //             .tr,
                                          //               //         overflow:
                                          //               //             TextOverflow
                                          //               //                 .ellipsis,
                                          //               //         textAlign:
                                          //               //             TextAlign
                                          //               //                 .left,
                                          //               //         style: AppStyle
                                          //               //             .txtInterMedium14Gray900
                                          //               //             .copyWith(
                                          //               //                 height:
                                          //               //                     1.43)))
                                          //             ]))))
                                        ]))),
                                Padding(
                                    padding: getPadding(left: 24, top: 35, right: 24),
                                    child: Text("lbl_trending".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium24Gray900.copyWith())),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                        height: getVerticalSize(200.00),
                                        width: getHorizontalSize(351.00),
                                        margin: getMargin(left: 10, top: 16),
                                        child: Stack(alignment: Alignment.centerRight, children: [
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Container(
                                                  height: getVerticalSize(200.00),
                                                  width: getHorizontalSize(404.00),
                                                  child: Obx(() => ListView.builder(
                                                      scrollDirection: Axis.horizontal,
                                                      physics: BouncingScrollPhysics(),
                                                      itemCount: controller
                                                          .marketModelObj.value.listrectanglethirtyFourItemList.length,
                                                      itemBuilder: (context, index) {
                                                        ListrectanglethirtyFourItemModel model = controller
                                                            .marketModelObj
                                                            .value
                                                            .listrectanglethirtyFourItemList[index];
                                                        return ListrectanglethirtyFourItemWidget(model);
                                                      })))),
                                          // Align(
                                          //     alignment:
                                          //         Alignment.centerRight,
                                          //     child: SingleChildScrollView(
                                          //         scrollDirection:
                                          //             Axis.horizontal,
                                          //         padding:
                                          //             getPadding(left: 10),
                                          //         child: Container(
                                          //             child: Column(
                                          //                 mainAxisSize:
                                          //                     MainAxisSize
                                          //                         .min,
                                          //                 crossAxisAlignment:
                                          //                     CrossAxisAlignment
                                          //                         .start,
                                          //                 mainAxisAlignment:
                                          //                     MainAxisAlignment
                                          //                         .start,
                                          //                 children: [
                                          //               CommonImageView(
                                          //                   imagePath:
                                          //                       ImageConstant
                                          //                           .imgRectangle302,
                                          //                   height:
                                          //                       getVerticalSize(
                                          //                           110.00),
                                          //                   width:
                                          //                       getHorizontalSize(
                                          //                           124.00)),
                                          //               Container(
                                          //                   width:
                                          //                       getHorizontalSize(
                                          //                           124.00),
                                          //                   margin: getMargin(
                                          //                       top: 4),
                                          //                   child: Text(
                                          //                       "msg_item_1_name_go"
                                          //                           .tr,
                                          //                       maxLines:
                                          //                           null,
                                          //                       textAlign:
                                          //                           TextAlign
                                          //                               .left,
                                          //                       style: AppStyle
                                          //                           .txtInterRegular14
                                          //                           .copyWith(
                                          //                               height:
                                          //                                   1.43))),
                                          //               Padding(
                                          //                   padding:
                                          //                       getPadding(
                                          //                           top: 4,
                                          //                           right:
                                          //                               10),
                                          //                   child: Text(
                                          //                       "lbl_19_99"
                                          //                           .tr,
                                          //                       overflow:
                                          //                           TextOverflow
                                          //                               .ellipsis,
                                          //                       textAlign:
                                          //                           TextAlign
                                          //                               .left,
                                          //                       style: AppStyle
                                          //                           .txtInterMedium14Gray900
                                          //                           .copyWith(
                                          //                               height:
                                          //                                   1.43)))
                                          //             ]))))
                                        ]))),
                                Padding(
                                    padding: getPadding(left: 24, top: 35, right: 24),
                                    child: Text("lbl_deals".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium24Gray900.copyWith())),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                        height: getVerticalSize(200.00),
                                        width: getHorizontalSize(351.00),
                                        margin: getMargin(left: 10, top: 16),
                                        child: Stack(alignment: Alignment.centerRight, children: [
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Container(
                                                  height: getVerticalSize(200.00),
                                                  width: getHorizontalSize(404.00),
                                                  child: Obx(() => ListView.builder(
                                                      scrollDirection: Axis.horizontal,
                                                      physics: BouncingScrollPhysics(),
                                                      itemCount: controller
                                                          .marketModelObj.value.listrectanglethirtyFourItemList.length,
                                                      itemBuilder: (context, index) {
                                                        ListrectanglethirtyFourItemModel model = controller
                                                            .marketModelObj
                                                            .value
                                                            .listrectanglethirtyFourItemList[index];
                                                        return ListrectanglethirtyFourItemWidget(model);
                                                      })))),
                                          // Align(
                                          //     alignment:
                                          //         Alignment.centerRight,
                                          //     child: SingleChildScrollView(
                                          //         scrollDirection:
                                          //             Axis.horizontal,
                                          //         padding:
                                          //             getPadding(left: 10),
                                          //         child: Container(
                                          //             child: Column(
                                          //                 mainAxisSize:
                                          //                     MainAxisSize
                                          //                         .min,
                                          //                 crossAxisAlignment:
                                          //                     CrossAxisAlignment
                                          //                         .start,
                                          //                 mainAxisAlignment:
                                          //                     MainAxisAlignment
                                          //                         .start,
                                          //                 children: [
                                          //               CommonImageView(
                                          //                   imagePath:
                                          //                       ImageConstant
                                          //                           .imgRectangle302,
                                          //                   height:
                                          //                       getVerticalSize(
                                          //                           110.00),
                                          //                   width:
                                          //                       getHorizontalSize(
                                          //                           124.00)),
                                          //               Container(
                                          //                   width:
                                          //                       getHorizontalSize(
                                          //                           124.00),
                                          //                   margin: getMargin(
                                          //                       top: 4),
                                          //                   child: Text(
                                          //                       "msg_item_1_name_go"
                                          //                           .tr,
                                          //                       maxLines:
                                          //                           null,
                                          //                       textAlign:
                                          //                           TextAlign
                                          //                               .left,
                                          //                       style: AppStyle
                                          //                           .txtInterRegular14
                                          //                           .copyWith(
                                          //                               height:
                                          //                                   1.43))),
                                          //               Padding(
                                          //                   padding:
                                          //                       getPadding(
                                          //                           top: 4,
                                          //                           right:
                                          //                               10),
                                          //                   child: Text(
                                          //                       "lbl_19_99"
                                          //                           .tr,
                                          //                       overflow:
                                          //                           TextOverflow
                                          //                               .ellipsis,
                                          //                       textAlign:
                                          //                           TextAlign
                                          //                               .left,
                                          //                       style: AppStyle
                                          //                           .txtInterMedium14Gray900
                                          //                           .copyWith(
                                          //                               height:
                                          //                                   1.43)))
                                          //             ]))))
                                        ]))),
                              ])))),
                ]))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
