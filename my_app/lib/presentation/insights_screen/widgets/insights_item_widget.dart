import '../controller/insights_controller.dart';
import '../models/insights_item_model.dart';
import 'package:flutter/material.dart';
import 'package:my_app/core/app_export.dart';

// ignore: must_be_immutable
class InsightsItemWidget extends StatelessWidget {
  InsightsItemWidget(this.insightsItemModelObj);

  InsightsItemModel insightsItemModelObj;

  var controller = Get.find<InsightsController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: getPadding(
          top: 17.365005,
          bottom: 17.365005,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: getSize(
                    16.00,
                  ),
                  width: getSize(
                    16.00,
                  ),
                  margin: getMargin(
                    bottom: 1,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.lightBlueA700,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        8.00,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 16,
                    top: 1,
                  ),
                  child: Text(
                    "lbl_item".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular16.copyWith(
                      height: 1.00,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: getPadding(
                left: 202,
                top: 1,
                bottom: 1,
              ),
              child: Text(
                "lbl_statistic".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterRegular16.copyWith(
                  height: 1.00,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
