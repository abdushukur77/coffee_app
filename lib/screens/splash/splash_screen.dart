import 'package:coffee_app/screens/routes.dart';
import 'package:coffee_app/utils/styles/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/colors/app_colors.dart';
import '../../utils/images/app_images.dart';
import '../../utils/size/size_utils.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(statusBarColor: AppColors.transparent),
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              AppImages.splash,
              height: 460.h,
              width: double.infinity,
              fit: BoxFit.cover,

            ),
            Padding(
              padding: EdgeInsets.all(27.h),
              child: Center(
                child: Text(
                  "FIND THE BEST COFFEE FOR YOU",
                  style: AppTextStyle.robotoBold?.copyWith(
                        color: AppColors.white,
                        fontSize: 32.sp,
                      ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 75.h),
            TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, RouteNames.home);
              },
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: 32.w,
                  vertical: 16.h,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.r)
                ),
                backgroundColor: AppColors.white.withOpacity(.1,),
              ),
              child: Text(
                "Proceed",
                style: AppTextStyle.robotoMedium.copyWith(
                      color: AppColors.white,
                      fontSize: 18.sp,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
