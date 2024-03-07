import 'package:coffee_app/utils/images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/colors/app_colors.dart';
import '../../../utils/styles/app_text_style.dart';

class Popular extends StatelessWidget {
  const Popular({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 8.h,
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r)),
            side:
                BorderSide(width: 2.w, color: AppColors.white.withOpacity(.1)),
            backgroundColor: AppColors.transparent,
          ),
          child: Text(
            title,
            style: AppTextStyle.robotoMedium.copyWith(
              color: AppColors.white,
              fontSize: 18.sp,
            ),
          ),
        ),
        SizedBox(width: 10,),


      ],
    );
  }
}
