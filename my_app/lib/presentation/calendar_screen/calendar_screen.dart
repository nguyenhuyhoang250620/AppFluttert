import '../calendar_screen/widgets/listicon_item_widget.dart';
import '../calendar_screen/widgets/listmo_item_widget.dart';
import 'controller/calendar_controller.dart';
import 'models/listicon_item_model.dart';
import 'models/listmo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:my_app/core/app_export.dart';

class CalendarScreen extends GetWidget<CalendarController> {
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
                                      padding: getPadding(left: 108),
                                      child: Text("lbl_calendar".tr,
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
                                  height: getVerticalSize(392.00),
                                  width: size.width,
                                  child: Stack(alignment: Alignment.bottomCenter, children: [
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                            margin: getMargin(bottom: 10),
                                            decoration: AppDecoration.fillWhiteA700,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment: Alignment.centerLeft,
                                                      child: Container(
                                                          width: size.width,
                                                          margin: getMargin(bottom: 85),
                                                          child: Container(
                                                              child: Column(
                                                                  mainAxisSize: MainAxisSize.min,
                                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                                  children: []))))
                                                ]))),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                            padding: getPadding(left: 18, top: 10, right: 18),
                                            child: Obx(() => ListView.builder(
                                                physics: BouncingScrollPhysics(),
                                                shrinkWrap: true,
                                                itemCount: controller.calendarModelObj.value.listmoItemList.length,
                                                itemBuilder: (context, index) {
                                                  ListmoItemModel model =
                                                      controller.calendarModelObj.value.listmoItemList[index];
                                                  return ListmoItemWidget(model);
                                                }))))
                                  ])),
                              Container(
                                  width: double.infinity,
                                  margin: getMargin(top: 40),
                                  decoration: AppDecoration.fillWhiteA700,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: getPadding(left: 24, right: 24),
                                                child: Obx(() => ListView.separated(
                                                    physics: BouncingScrollPhysics(),
                                                    shrinkWrap: true,
                                                    separatorBuilder: (context, index) {
                                                      return Container(
                                                          height: getVerticalSize(1.00),
                                                          width: getHorizontalSize(327.00),
                                                          decoration: BoxDecoration(color: ColorConstant.indigo50));
                                                    },
                                                    itemCount:
                                                        controller.calendarModelObj.value.listiconItemList.length,
                                                    itemBuilder: (context, index) {
                                                      ListiconItemModel model =
                                                          controller.calendarModelObj.value.listiconItemList[index];
                                                      return ListiconItemWidget(model);
                                                    })))),
                                        Container(
                                            height: getVerticalSize(1.00),
                                            width: getHorizontalSize(327.00),
                                            margin: getMargin(left: 24, top: 15, right: 24),
                                            decoration: BoxDecoration(color: ColorConstant.indigo50)),
                                      ]))
                            ])))),
                  ),
                  Container(
                      height: getVerticalSize(100.00),
                      width: size.width,
                      margin: getMargin(top: 0),
                      child: Stack(alignment: Alignment.topLeft, children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                                margin: getMargin(top: 8, bottom: 10),
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
                                    ])))
                      ]))
                ],
              ),
            )));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
