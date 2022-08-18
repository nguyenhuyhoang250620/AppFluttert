import '../controller/market_controller.dart';
import '../models/listrectanglethirty_eight_item_model.dart';
import 'package:flutter/material.dart';
import 'package:my_app/core/app_export.dart';

// ignore: must_be_immutable
class ListrectanglethirtyEightItemWidget extends StatelessWidget {
  ListrectanglethirtyEightItemWidget(this.listrectanglethirtyEightItemModelObj);

  ListrectanglethirtyEightItemModel listrectanglethirtyEightItemModelObj;

  var controller = Get.find<MarketController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        margin: getMargin(
          right: 2,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: getVerticalSize(
                110.00,
              ),
              width: getHorizontalSize(
                124.00,
              ),
              decoration: BoxDecoration(
                color: ColorConstant.gray51,
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    10.00,
                  ),
                ),
              ),
            ),
            Container(
              width: getHorizontalSize(
                124.00,
              ),
              margin: getMargin(
                top: 4,
              ),
              child: Text(
                "msg_item_1_name_go".tr,
                maxLines: null,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterRegular14.copyWith(
                  height: 1.43,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 4,
                right: 10,
              ),
              child: Text(
                "lbl_19_99".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterMedium14Gray900.copyWith(
                  height: 1.43,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
