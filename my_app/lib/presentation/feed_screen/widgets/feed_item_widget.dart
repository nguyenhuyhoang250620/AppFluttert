import '../../drawer_bottomsheet/drawer_bottomsheet.dart';
import '../controller/feed_controller.dart';
import '../models/feed_item_model.dart';
import 'package:flutter/material.dart';
import 'package:my_app/core/app_export.dart';

// ignore: must_be_immutable
class FeedItemWidget extends StatelessWidget {
  FeedItemWidget(this.feedItemModelObj);

  FeedItemModel feedItemModelObj;

  var controller = Get.find<FeedController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onLongPress: () {
          print("hello");
           Get.bottomSheet(
            DrawerBottomsheet(
              Get.put(
                DrawerControllerState(),
              ),
            ),
            isScrollControlled: true,
          );
        },
        onPressed: () {
          
        },
        child: Container(
          child: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: getPadding(
              top: 13.0,
              bottom: 13.0,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  height: getSize(
                    50.00,
                  ),
                  width: getSize(
                    50.00,
                  ),
                  margin: getMargin(
                    bottom: 17,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.gray51,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        8.00,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: getMargin(
                    left: 16,
                    top: 4,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: getHorizontalSize(
                          261.00,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: getPadding(
                                bottom: 1,
                              ),
                              child: Text(
                                "lbl_header".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterMedium16Gray900.copyWith(
                                  height: 1.00,
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 2,
                              ),
                              child: Text(
                                "lbl_8m_ago".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterRegular14Bluegray200.copyWith(
                                  height: 1.00,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: getHorizontalSize(
                            253.00,
                          ),
                          margin: getMargin(
                            top: 11,
                            right: 8,
                          ),
                          child: Text(
                            "msg_he_ll_want_to_u".tr,
                            maxLines: null,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterRegular14.copyWith(
                              height: 1.43,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        )
      ),
    );
  }
}
