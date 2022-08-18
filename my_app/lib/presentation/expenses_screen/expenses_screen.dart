import '../expenses_screen/widgets/listbackground_item_widget.dart';
import '../expenses_screen/widgets/listbackground_three_item_widget.dart';
import '../expenses_screen/widgets/listicon1_item_widget.dart';
import 'controller/expenses_controller.dart';
import 'models/listbackground_item_model.dart';
import 'models/listbackground_three_item_model.dart';
import 'models/listicon1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:my_app/core/app_export.dart';

class ExpensesScreen extends GetWidget<ExpensesController> {
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
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
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
                                                                        borderRadius: BorderRadius.circular(
                                                                            getHorizontalSize(3.00)),
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
                                            padding: getPadding(left: 24, top: 29, right: 24),
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
                                                          padding: getPadding(bottom: 10),
                                                          child: CommonImageView(
                                                              svgPath: ImageConstant.imgArrowleft,
                                                              height: getVerticalSize(12.00),
                                                              width: getHorizontalSize(16.00)))),
                                                  Padding(
                                                      padding: getPadding(left: 105, top: 1),
                                                      child: Text("lbl_expenses".tr,
                                                          overflow: TextOverflow.ellipsis,
                                                          textAlign: TextAlign.left,
                                                          style: AppStyle.txtInterMedium20.copyWith(height: 1.00)))
                                                ])))
                                  ])))),
                      Padding(
                          padding: getPadding(left: 16, top: 48, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                    height: getVerticalSize(202.00),
                                    width: getHorizontalSize(122.00),
                                    child: Obx(() => ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        physics: BouncingScrollPhysics(),
                                        itemCount: controller.expensesModelObj.value.listbackgroundItemList.length,
                                        itemBuilder: (context, index) {
                                          ListbackgroundItemModel model =
                                              controller.expensesModelObj.value.listbackgroundItemList[index];
                                          return ListbackgroundItemWidget(model);
                                        }))),
                                Container(
                                    height: getVerticalSize(202.00),
                                    width: getHorizontalSize(210.00),
                                    child: Obx(() => ListView.builder(
                                        padding: getPadding(left: 10),
                                        scrollDirection: Axis.horizontal,
                                        physics: BouncingScrollPhysics(),
                                        itemCount: controller.expensesModelObj.value.listbackgroundThreeItemList.length,
                                        itemBuilder: (context, index) {
                                          ListbackgroundThreeItemModel model =
                                              controller.expensesModelObj.value.listbackgroundThreeItemList[index];
                                          return ListbackgroundThreeItemWidget(model);
                                        })))
                              ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 16, top: 66, right: 16),
                              child: Text("lbl_expenses".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterMedium24Gray900.copyWith()))),
                      Padding(
                          padding: getPadding(left: 16, top: 47, right: 16),
                          child: Obx(() => ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(343.00),
                                    decoration: BoxDecoration(color: ColorConstant.indigo50));
                              },
                              itemCount: controller.expensesModelObj.value.listicon1ItemList.length,
                              itemBuilder: (context, index) {
                                Listicon1ItemModel model = controller.expensesModelObj.value.listicon1ItemList[index];
                                return Listicon1ItemWidget(model);
                              }))),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(343.00),
                          margin: getMargin(left: 16, top: 15, right: 16, bottom: 20),
                          decoration: BoxDecoration(color: ColorConstant.indigo50))
                    ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
