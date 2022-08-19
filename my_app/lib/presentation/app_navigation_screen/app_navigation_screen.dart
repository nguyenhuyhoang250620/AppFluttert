import 'controller/app_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:my_app/core/app_export.dart';
import 'package:my_app/presentation/drawer_bottomsheet/drawer_bottomsheet.dart';
import 'package:my_app/presentation/drawer_bottomsheet/controller/drawer_controller.dart';
import 'package:my_app/presentation/congratulations_dialog/congratulations_dialog.dart';
import 'package:my_app/presentation/congratulations_dialog/controller/congratulations_controller.dart';
import 'package:my_app/presentation/rating_dialog/rating_dialog.dart';
import 'package:my_app/presentation/rating_dialog/controller/rating_controller.dart';

class AppNavigationScreen extends GetWidget<AppNavigationController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                  width: size.width,
                  decoration: AppDecoration.fillWhiteA700,
                  child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: getPadding(left: 20, top: 10, right: 20, bottom: 10),
                            child: Text("lbl_app_navigation".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: AppStyle.txtRobotoRegular20.copyWith()))),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: getPadding(left: 20),
                            child: Text("msg_check_your_app".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: AppStyle.txtRobotoRegular16.copyWith()))),
                    Container(
                        height: getVerticalSize(1.00),
                        width: size.width,
                        margin: getMargin(top: 5),
                        decoration: BoxDecoration(color: ColorConstant.black900))
                  ])),
              Expanded(
                  child: Align(
                      alignment: Alignment.center,
                      child: SingleChildScrollView(
                          child: Container(
                              decoration: AppDecoration.fillWhiteA700,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          onTapCalendar();
                                        },
                                        child: Container(
                                            width: size.width,
                                            decoration: AppDecoration.fillWhiteA700,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment: Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(left: 20, top: 10, right: 20, bottom: 10),
                                                          child: Text("lbl_calendar".tr,
                                                              overflow: TextOverflow.ellipsis,
                                                              textAlign: TextAlign.center,
                                                              style: AppStyle.txtRobotoRegular20Black900.copyWith()))),
                                                  Container(
                                                      height: getVerticalSize(1.00),
                                                      width: size.width,
                                                      margin: getMargin(top: 5),
                                                      decoration: BoxDecoration(color: ColorConstant.bluegray400))
                                                ]))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapInsights();
                                        },
                                        child: Container(
                                            width: size.width,
                                            decoration: AppDecoration.fillWhiteA700,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment: Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(left: 20, top: 10, right: 20, bottom: 10),
                                                          child: Text("lbl_insights".tr,
                                                              overflow: TextOverflow.ellipsis,
                                                              textAlign: TextAlign.center,
                                                              style:
                                                                  AppStyle.txtRobotoRegular20Black90012.copyWith()))),
                                                  Container(
                                                      height: getVerticalSize(1.00),
                                                      width: size.width,
                                                      margin: getMargin(top: 5),
                                                      decoration: BoxDecoration(color: ColorConstant.bluegray400))
                                                ]))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapSignUp();
                                        },
                                        child: Container(
                                            width: size.width,
                                            decoration: AppDecoration.fillWhiteA700,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment: Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(left: 20, top: 10, right: 20, bottom: 10),
                                                          child: Text("lbl_sign_up2".tr,
                                                              overflow: TextOverflow.ellipsis,
                                                              textAlign: TextAlign.center,
                                                              style:
                                                                  AppStyle.txtRobotoRegular20Black90012.copyWith()))),
                                                  Container(
                                                      height: getVerticalSize(1.00),
                                                      width: size.width,
                                                      margin: getMargin(top: 5),
                                                      decoration: BoxDecoration(color: ColorConstant.bluegray400))
                                                ]))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapDrawer();
                                        },
                                        child: Container(
                                            width: size.width,
                                            decoration: AppDecoration.fillWhiteA700,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment: Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(left: 20, top: 10, right: 20, bottom: 10),
                                                          child: Text("lbl_drawer".tr,
                                                              overflow: TextOverflow.ellipsis,
                                                              textAlign: TextAlign.center,
                                                              style:
                                                                  AppStyle.txtRobotoRegular20Black90012.copyWith()))),
                                                  Container(
                                                      height: getVerticalSize(1.00),
                                                      width: size.width,
                                                      margin: getMargin(top: 5),
                                                      decoration: BoxDecoration(color: ColorConstant.bluegray400))
                                                ]))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapSearch();
                                        },
                                        child: Container(
                                            width: size.width,
                                            decoration: AppDecoration.fillWhiteA700,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment: Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(left: 20, top: 10, right: 20, bottom: 10),
                                                          child: Text("lbl_search".tr,
                                                              overflow: TextOverflow.ellipsis,
                                                              textAlign: TextAlign.center,
                                                              style:
                                                                  AppStyle.txtRobotoRegular20Black90012.copyWith()))),
                                                  Container(
                                                      height: getVerticalSize(1.00),
                                                      width: size.width,
                                                      margin: getMargin(top: 5),
                                                      decoration: BoxDecoration(color: ColorConstant.bluegray400))
                                                ]))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapContent();
                                        },
                                        child: Container(
                                            width: size.width,
                                            decoration: AppDecoration.fillWhiteA700,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment: Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(left: 20, top: 10, right: 20, bottom: 10),
                                                          child: Text("lbl_content".tr,
                                                              overflow: TextOverflow.ellipsis,
                                                              textAlign: TextAlign.center,
                                                              style:
                                                                  AppStyle.txtRobotoRegular20Black90012.copyWith()))),
                                                  Container(
                                                      height: getVerticalSize(1.00),
                                                      width: size.width,
                                                      margin: getMargin(top: 5),
                                                      decoration: BoxDecoration(color: ColorConstant.bluegray400))
                                                ]))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapProfilePosts();
                                        },
                                        child: Container(
                                            width: size.width,
                                            decoration: AppDecoration.fillWhiteA700,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment: Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(left: 20, top: 10, right: 20, bottom: 10),
                                                          child: Text("lbl_profile_posts".tr,
                                                              overflow: TextOverflow.ellipsis,
                                                              textAlign: TextAlign.center,
                                                              style:
                                                                  AppStyle.txtRobotoRegular20Black90012.copyWith()))),
                                                  Container(
                                                      height: getVerticalSize(1.00),
                                                      width: size.width,
                                                      margin: getMargin(top: 5),
                                                      decoration: BoxDecoration(color: ColorConstant.bluegray400))
                                                ]))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapImages();
                                        },
                                        child: Container(
                                            width: size.width,
                                            decoration: AppDecoration.fillWhiteA700,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment: Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(left: 20, top: 10, right: 20, bottom: 10),
                                                          child: Text("lbl_images".tr,
                                                              overflow: TextOverflow.ellipsis,
                                                              textAlign: TextAlign.center,
                                                              style:
                                                                  AppStyle.txtRobotoRegular20Black90012.copyWith()))),
                                                  Container(
                                                      height: getVerticalSize(1.00),
                                                      width: size.width,
                                                      margin: getMargin(top: 5),
                                                      decoration: BoxDecoration(color: ColorConstant.bluegray400))
                                                ]))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapLogIn();
                                        },
                                        child: Container(
                                            width: size.width,
                                            decoration: AppDecoration.fillWhiteA700,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment: Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(left: 20, top: 10, right: 20, bottom: 10),
                                                          child: Text("lbl_log_in2".tr,
                                                              overflow: TextOverflow.ellipsis,
                                                              textAlign: TextAlign.center,
                                                              style:
                                                                  AppStyle.txtRobotoRegular20Black90012.copyWith()))),
                                                  Container(
                                                      height: getVerticalSize(1.00),
                                                      width: size.width,
                                                      margin: getMargin(top: 5),
                                                      decoration: BoxDecoration(color: ColorConstant.bluegray400))
                                                ]))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapCongratulations();
                                        },
                                        child: Container(
                                            width: size.width,
                                            decoration: AppDecoration.fillWhiteA700,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment: Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(left: 20, top: 10, right: 20, bottom: 10),
                                                          child: Text("lbl_congratulations".tr,
                                                              overflow: TextOverflow.ellipsis,
                                                              textAlign: TextAlign.center,
                                                              style:
                                                                  AppStyle.txtRobotoRegular20Black90012.copyWith()))),
                                                  Container(
                                                      height: getVerticalSize(1.00),
                                                      width: size.width,
                                                      margin: getMargin(top: 5),
                                                      decoration: BoxDecoration(color: ColorConstant.bluegray400))
                                                ]))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapFeed();
                                        },
                                        child: Container(
                                            width: size.width,
                                            decoration: AppDecoration.fillWhiteA700,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment: Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(left: 20, top: 10, right: 20, bottom: 10),
                                                          child: Text("lbl_feed".tr,
                                                              overflow: TextOverflow.ellipsis,
                                                              textAlign: TextAlign.center,
                                                              style:
                                                                  AppStyle.txtRobotoRegular20Black90012.copyWith()))),
                                                  Container(
                                                      height: getVerticalSize(1.00),
                                                      width: size.width,
                                                      margin: getMargin(top: 5),
                                                      decoration: BoxDecoration(color: ColorConstant.bluegray400))
                                                ]))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapMarket();
                                        },
                                        child: Container(
                                            width: size.width,
                                            decoration: AppDecoration.fillWhiteA700,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment: Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(left: 20, top: 10, right: 20, bottom: 10),
                                                          child: Text("lbl_market".tr,
                                                              overflow: TextOverflow.ellipsis,
                                                              textAlign: TextAlign.center,
                                                              style:
                                                                  AppStyle.txtRobotoRegular20Black90012.copyWith()))),
                                                  Container(
                                                      height: getVerticalSize(1.00),
                                                      width: size.width,
                                                      margin: getMargin(top: 5),
                                                      decoration: BoxDecoration(color: ColorConstant.bluegray400))
                                                ]))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapGallery();
                                        },
                                        child: Container(
                                            width: size.width,
                                            decoration: AppDecoration.fillWhiteA700,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment: Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(left: 20, top: 10, right: 20, bottom: 10),
                                                          child: Text("lbl_gallery".tr,
                                                              overflow: TextOverflow.ellipsis,
                                                              textAlign: TextAlign.center,
                                                              style:
                                                                  AppStyle.txtRobotoRegular20Black90012.copyWith()))),
                                                  Container(
                                                      height: getVerticalSize(1.00),
                                                      width: size.width,
                                                      margin: getMargin(top: 5),
                                                      decoration: BoxDecoration(color: ColorConstant.bluegray400))
                                                ]))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapCompose();
                                        },
                                        child: Container(
                                            width: size.width,
                                            decoration: AppDecoration.fillWhiteA700,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment: Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(left: 20, top: 10, right: 20, bottom: 10),
                                                          child: Text("lbl_compose".tr,
                                                              overflow: TextOverflow.ellipsis,
                                                              textAlign: TextAlign.center,
                                                              style:
                                                                  AppStyle.txtRobotoRegular20Black90012.copyWith()))),
                                                  Container(
                                                      height: getVerticalSize(1.00),
                                                      width: size.width,
                                                      margin: getMargin(top: 5),
                                                      decoration: BoxDecoration(color: ColorConstant.bluegray400))
                                                ]))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapBlogPost();
                                        },
                                        child: Container(
                                            width: size.width,
                                            decoration: AppDecoration.fillWhiteA700,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment: Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(left: 20, top: 10, right: 20, bottom: 10),
                                                          child: Text("lbl_blog_post".tr,
                                                              overflow: TextOverflow.ellipsis,
                                                              textAlign: TextAlign.center,
                                                              style:
                                                                  AppStyle.txtRobotoRegular20Black90012.copyWith()))),
                                                  Container(
                                                      height: getVerticalSize(1.00),
                                                      width: size.width,
                                                      margin: getMargin(top: 5),
                                                      decoration: BoxDecoration(color: ColorConstant.bluegray400))
                                                ]))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapWalkthrough();
                                        },
                                        child: Container(
                                            width: size.width,
                                            decoration: AppDecoration.fillWhiteA700,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment: Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(left: 20, top: 10, right: 20, bottom: 10),
                                                          child: Text("lbl_walkthrough".tr,
                                                              overflow: TextOverflow.ellipsis,
                                                              textAlign: TextAlign.center,
                                                              style:
                                                                  AppStyle.txtRobotoRegular20Black90012.copyWith()))),
                                                  Container(
                                                      height: getVerticalSize(1.00),
                                                      width: size.width,
                                                      margin: getMargin(top: 5),
                                                      decoration: BoxDecoration(color: ColorConstant.bluegray400))
                                                ]))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapRating();
                                        },
                                        child: Container(
                                            width: size.width,
                                            decoration: AppDecoration.fillWhiteA700,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment: Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(left: 20, top: 10, right: 20, bottom: 10),
                                                          child: Text("lbl_rating".tr,
                                                              overflow: TextOverflow.ellipsis,
                                                              textAlign: TextAlign.center,
                                                              style:
                                                                  AppStyle.txtRobotoRegular20Black90012.copyWith()))),
                                                  Container(
                                                      height: getVerticalSize(1.00),
                                                      width: size.width,
                                                      margin: getMargin(top: 5),
                                                      decoration: BoxDecoration(color: ColorConstant.bluegray400))
                                                ]))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapRadios();
                                        },
                                        child: Container(
                                            width: size.width,
                                            decoration: AppDecoration.fillWhiteA700,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment: Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(left: 20, top: 10, right: 20, bottom: 10),
                                                          child: Text("lbl_radios".tr,
                                                              overflow: TextOverflow.ellipsis,
                                                              textAlign: TextAlign.center,
                                                              style:
                                                                  AppStyle.txtRobotoRegular20Black90012.copyWith()))),
                                                  Container(
                                                      height: getVerticalSize(1.00),
                                                      width: size.width,
                                                      margin: getMargin(top: 5),
                                                      decoration: BoxDecoration(color: ColorConstant.bluegray400))
                                                ]))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapMarketOne();
                                        },
                                        child: Container(
                                            width: size.width,
                                            decoration: AppDecoration.fillWhiteA700,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment: Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(left: 20, top: 10, right: 20, bottom: 10),
                                                          child: Text("lbl_market_one".tr,
                                                              overflow: TextOverflow.ellipsis,
                                                              textAlign: TextAlign.center,
                                                              style:
                                                                  AppStyle.txtRobotoRegular20Black90012.copyWith()))),
                                                  Container(
                                                      height: getVerticalSize(1.00),
                                                      width: size.width,
                                                      margin: getMargin(top: 5),
                                                      decoration: BoxDecoration(color: ColorConstant.bluegray400))
                                                ]))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapProfileMenu();
                                        },
                                        child: Container(
                                            width: size.width,
                                            decoration: AppDecoration.fillWhiteA700,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment: Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(left: 20, top: 10, right: 20, bottom: 10),
                                                          child: Text("lbl_profile_menu".tr,
                                                              overflow: TextOverflow.ellipsis,
                                                              textAlign: TextAlign.center,
                                                              style:
                                                                  AppStyle.txtRobotoRegular20Black90012.copyWith()))),
                                                  Container(
                                                      height: getVerticalSize(1.00),
                                                      width: size.width,
                                                      margin: getMargin(top: 5),
                                                      decoration: BoxDecoration(color: ColorConstant.bluegray400))
                                                ]))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapExpenses();
                                        },
                                        child: Container(
                                            width: size.width,
                                            decoration: AppDecoration.fillWhiteA700,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment: Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(left: 20, top: 10, right: 20, bottom: 10),
                                                          child: Text("lbl_expenses".tr,
                                                              overflow: TextOverflow.ellipsis,
                                                              textAlign: TextAlign.center,
                                                              style:
                                                                  AppStyle.txtRobotoRegular20Black90012.copyWith()))),
                                                  Container(
                                                      height: getVerticalSize(1.00),
                                                      width: size.width,
                                                      margin: getMargin(top: 5),
                                                      decoration: BoxDecoration(color: ColorConstant.bluegray400))
                                                ]))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapBottom();
                                        },
                                        child: Container(
                                            width: size.width,
                                            decoration: AppDecoration.fillWhiteA700,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment: Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(left: 20, top: 10, right: 20, bottom: 10),
                                                          child: Text("lbl_expenses".tr,
                                                              overflow: TextOverflow.ellipsis,
                                                              textAlign: TextAlign.center,
                                                              style:
                                                                  AppStyle.txtRobotoRegular20Black90012.copyWith()))),
                                                  Container(
                                                      height: getVerticalSize(1.00),
                                                      width: size.width,
                                                      margin: getMargin(top: 5),
                                                      decoration: BoxDecoration(color: ColorConstant.bluegray400))
                                                ])))
                                  ])))))
            ]))));
  }

  onTapSignUp() {
    Get.toNamed(AppRoutes.signUpScreen);
  }

  onTapCalendar() {
    Get.toNamed(AppRoutes.calendarScreen);
  }

  onTapInsights() {
    Get.toNamed(AppRoutes.insightsScreen);
  }

  onTapDrawer() {
    Get.bottomSheet(
      DrawerBottomsheet(
        Get.put(
          DrawerControllerState(),
        ),
      ),
      isScrollControlled: true,
    );
  }

  onTapSearch() {
    Get.toNamed(AppRoutes.searchScreen);
  }

  onTapContent() {
    Get.toNamed(AppRoutes.contentScreen);
  }

  onTapProfilePosts() {
    Get.toNamed(AppRoutes.profilePostsScreen);
  }

  onTapImages() {
    Get.toNamed(AppRoutes.imagesScreen);
  }

  onTapLogIn() {
    Get.toNamed(AppRoutes.logInScreen);
  }

  onTapCongratulations() {
    Get.defaultDialog(
      title: '',
      content: CongratulationsDialog(
        Get.put(
          CongratulationsController(),
        ),
      ),
    );
  }

  onTapFeed() {
    Get.toNamed(AppRoutes.feedScreen);
  }

  onTapMarket() {
    Get.toNamed(AppRoutes.marketScreen);
  }

  onTapGallery() {
    Get.toNamed(AppRoutes.galleryScreen);
  }

  onTapCompose() {
    Get.toNamed(AppRoutes.composeScreen);
  }

  onTapBlogPost() {
    Get.toNamed(AppRoutes.blogPostScreen);
  }

  onTapWalkthrough() {
    Get.toNamed(AppRoutes.walkthroughScreen);
  }

  onTapRating() {
    Get.defaultDialog(
      title: '',
      content: RatingDialog(
        Get.put(
          RatingController(),
        ),
      ),
    );
  }

  onTapRadios() {
    Get.toNamed(AppRoutes.radiosScreen);
  }

  onTapMarketOne() {
    Get.toNamed(AppRoutes.marketOneScreen);
  }

  onTapProfileMenu() {
    Get.toNamed(AppRoutes.profileMenuScreen);
  }

  onTapExpenses() {
    Get.toNamed(AppRoutes.expensesScreen);
  }

  onTapBottom() {
    Get.toNamed(AppRoutes.bottomScreen);
  }
}
