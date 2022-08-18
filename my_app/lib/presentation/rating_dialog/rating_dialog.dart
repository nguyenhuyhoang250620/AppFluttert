import 'controller/rating_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:my_app/core/app_export.dart';
import 'package:my_app/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class RatingDialog extends StatelessWidget {
  RatingDialog(this.controller);

  RatingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            margin: getMargin(
              left: 24,
              top: 100,
              right: 24,
              bottom: 20,
            ),
            decoration: AppDecoration.outlineIndigo9003f.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 29,
                    top: 32,
                    right: 29,
                  ),
                  child: RatingBar.builder(
                    initialRating: 5,
                    minRating: 0,
                    direction: Axis.horizontal,
                    allowHalfRating: false,
                    itemSize: getVerticalSize(
                      32.00,
                    ),
                    itemCount: 5,
                    updateOnDrag: true,
                    onRatingUpdate: (rating) {},
                    itemBuilder: (context, _) {
                      return Icon(
                        Icons.star,
                        color: ColorConstant.purpleA100,
                      );
                    },
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 29,
                    top: 40,
                    right: 29,
                  ),
                  child: Text(
                    "lbl_rate_our_app".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterMedium32.copyWith(
                      height: 1.00,
                    ),
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    269.00,
                  ),
                  margin: getMargin(
                    left: 29,
                    top: 17,
                    right: 29,
                  ),
                  child: Text(
                    "msg_consequat_velit2".tr,
                    maxLines: null,
                    textAlign: TextAlign.center,
                    style: AppStyle.txtInterRegular16Gray700.copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
                CustomButton(
                  width: 253,
                  text: "lbl_i_love_it".tr,
                  margin: getMargin(
                    left: 29,
                    top: 39,
                    right: 29,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 29,
                    top: 18,
                    right: 29,
                    bottom: 27,
                  ),
                  child: Text(
                    "msg_don_t_like_the".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterMedium16.copyWith(
                      height: 1.00,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
