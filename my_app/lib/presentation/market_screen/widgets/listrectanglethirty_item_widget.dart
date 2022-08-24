import 'package:my_app/presentation/blog_post_screen/binding/blog_post_binding.dart';

import '../controller/market_controller.dart';
import '../models/listrectanglethirty_item_model.dart';
import 'package:flutter/material.dart';
import 'package:my_app/core/app_export.dart';
import 'package:my_app/presentation/blog_post_screen/blog_post_screen.dart';

// ignore: must_be_immutable
class ListrectanglethirtyItemWidget extends StatelessWidget {
  ListrectanglethirtyItemWidget(this.listrectanglethirtyItemModelObj);

  ListrectanglethirtyItemModel listrectanglethirtyItemModelObj;

  var controller = Get.find<MarketController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: getMargin(
            right: 16,
            bottom: 3,
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
                child: TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: (() {
                    Get.to(BlogPostScreen(), binding: BlogPostBinding());
                  }),
                  child: Text(""),
                ),
              ),
              Container(
                width: getHorizontalSize(
                  90.00,
                ),
                margin: getMargin(
                  top: 8,
                  right: 10,
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
                  top: 11,
                  right: 10,
                ),
                child: Text(
                  "lbl_19_99".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterMedium14Gray900.copyWith(
                    height: 1.00,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
