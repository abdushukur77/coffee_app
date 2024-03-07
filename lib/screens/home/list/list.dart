import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/colors/app_colors.dart';
import '../../../utils/images/app_images.dart';
import '../../../utils/styles/app_text_style.dart';

List<Widget> favourite_list = [
  SizedBox(
    width: 256.w,
    child: Container(
        padding: EdgeInsets.all(8.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: AppColors.white.withOpacity(0.05),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              AppImages.cappucino,
            ),
            SizedBox(height: 8.h),
            Text(
              "Cappucino",
              style: AppTextStyle.robotoMedium?.copyWith(
                color: AppColors.white,
                fontSize: 24.sp,
              ),
              textAlign: TextAlign.start,
            ),
            Text(
              "With Chocolate",
              style: AppTextStyle.robotoBold?.copyWith(
                color: AppColors.white.withOpacity(.5),
                fontSize: 15.sp,
              ),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 26.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Text(
                      "18000",
                      style: AppTextStyle.robotoBold?.copyWith(
                        color: AppColors.c_D17842,
                        fontSize: 24.sp,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      " so'm",
                      style: AppTextStyle.robotoBold?.copyWith(
                        color: AppColors.c_D17842,
                        fontSize: 24.sp,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  padding: EdgeInsets.all(10.r),
                  icon: Container(
                    padding: EdgeInsets.all(16.w),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: AppColors.c_D17842),
                    child: SvgPicture.asset(AppImages.plus),
                  ),
                ),
              ],
            )
          ],
        )),
  ),
  SizedBox(
    width: 256.w,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          padding: EdgeInsets.all(8.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: AppColors.white.withOpacity(0.05),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                AppImages.cappucino,
              ),
              SizedBox(height: 8.h),
              Text(
                "Cappucino",
                style: AppTextStyle.robotoMedium?.copyWith(
                  color: AppColors.white,
                  fontSize: 24.sp,
                ),
                textAlign: TextAlign.start,
              ),
              Text(
                "With Chocolate",
                style: AppTextStyle.robotoBold?.copyWith(
                  color: AppColors.white.withOpacity(.5),
                  fontSize: 15.sp,
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Text(
                        "18000",
                        style: AppTextStyle.robotoBold?.copyWith(
                          color: AppColors.c_D17842,
                          fontSize: 24.sp,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        " so'm",
                        style: AppTextStyle.robotoBold?.copyWith(
                          color: AppColors.c_D17842,
                          fontSize: 24.sp,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    padding: EdgeInsets.all(10.r),
                    icon: Container(
                      padding: EdgeInsets.all(16.w),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: AppColors.c_D17842),
                      child: SvgPicture.asset(AppImages.plus),
                    ),
                  ),
                ],
              )
            ],
          )),
    ),
  ),
];
