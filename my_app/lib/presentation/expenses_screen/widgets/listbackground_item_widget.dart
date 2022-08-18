import '../controller/expenses_controller.dart';
import '../models/listbackground_item_model.dart';
import 'package:flutter/material.dart';
import 'package:my_app/core/app_export.dart';

// ignore: must_be_immutable
class ListbackgroundItemWidget extends StatelessWidget {
  ListbackgroundItemWidget(this.listbackgroundItemModelObj);

  ListbackgroundItemModel listbackgroundItemModelObj;

  var controller = Get.find<ExpensesController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        margin: getMargin(
          right: 10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: getVerticalSize(
                  181.00,
                ),
                width: getHorizontalSize(
                  18.00,
                ),
                margin: getMargin(
                  left: 9,
                  right: 6,
                ),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: getVerticalSize(
                          181.00,
                        ),
                        width: getHorizontalSize(
                          16.00,
                        ),
                        margin: getMargin(
                          right: 10,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.gray200,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                              getHorizontalSize(
                                7.00,
                              ),
                            ),
                            topRight: Radius.circular(
                              getHorizontalSize(
                                8.00,
                              ),
                            ),
                            bottomLeft: Radius.circular(
                              getHorizontalSize(
                                8.00,
                              ),
                            ),
                            bottomRight: Radius.circular(
                              getHorizontalSize(
                                7.00,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: getVerticalSize(
                          117.00,
                        ),
                        width: getHorizontalSize(
                          18.00,
                        ),
                        margin: getMargin(
                          left: 1,
                          top: 10,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.lightBlueA700,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              100.00,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 7,
                top: 9,
                right: 6,
              ),
              child: Text(
                "lbl_item".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterRegular10Gray700.copyWith(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
