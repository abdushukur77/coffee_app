import 'package:carousel_slider/carousel_slider.dart';
import 'package:coffee_app/screens/detail/detail_screen.dart';
import 'package:coffee_app/screens/home/list/list.dart';
import 'package:coffee_app/screens/home/widget/popular.dart';
import 'package:coffee_app/utils/size/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../data/model.dart';
import '../../utils/colors/app_colors.dart';
import '../../utils/images/app_images.dart';
import '../../utils/styles/app_text_style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final List<CoffeeModel> coffees=[
    CoffeeModel(image:AppImages.cappucino,price:120, description:'aadfasdfa', name: "Cappucino", categoryId:1, rate: 2, subtitle: 'With Chocolate', type:'L'),
    CoffeeModel(image:AppImages.splash,price:234, description:'aDds', name: "AAAAAAAAA", categoryId:2, rate: 2, subtitle: 'With Oat Milk', type:'S'),
    CoffeeModel(image:AppImages.cappucino,price:234, description:'aDds', name: "Cappucino", categoryId:3, rate: 2, subtitle: 'With Oat Milk', type:"M"),
    CoffeeModel(image:AppImages.splash,price:234, description:'aDds', name: "Cappucino", categoryId:4, rate: 2, subtitle: 'With Oat Milk', type:"S"),
    CoffeeModel(image:AppImages.cappucino,price:234, description:'aDds', name: "VASDAWRGWRGW", categoryId:5, rate: 2, subtitle: 'With Oat Milk', type:"L"),
    CoffeeModel(image:AppImages.splash,price:234, description:'aDds', name: "VASDAWRGWRGW", categoryId:6, rate: 2, subtitle: 'With Oat Milk', type:"M"),
    CoffeeModel(image:AppImages.cappucino,price:234, description:'aDds', name: "VASDAWRGWRGW", categoryId:7, rate: 2, subtitle: 'With Oat Milk', type:"S"),
    CoffeeModel(image:AppImages.splash,price:234, description:'aDds', name: "VASDAWRGWRGW", categoryId:8, rate: 2, subtitle: 'With Oat Milk', type:'L'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawerEnableOpenDragGesture: false,
      drawer: Drawer(
        backgroundColor: AppColors.white.withOpacity(.05),
        child: Column(
          children: [

          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 48.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: () {
                        scaffoldKey.currentState!.openDrawer();
                      },
                      icon: SvgPicture.asset(AppImages.menu)),
                  Spacer(),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(AppImages.search),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(AppImages.like),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 36.h),
              Text(
                "Your Favorites",
                style: AppTextStyle.robotoBold?.copyWith(
                  color: AppColors.white,
                  fontSize: 32.sp,
                ),
                textAlign: TextAlign.start,
              ),
              ZoomTapAnimation(
                onTap: (){},
                child: CarouselSlider(
                    items: favourite_list,
                    options: CarouselOptions(
                      aspectRatio: 0.844,
                      viewportFraction: 0.8,
                      initialPage: 1,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 1),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 300),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.2,
                      scrollDirection: Axis.horizontal,
                    )),
              ),
              Text(
                "Popular Now",
                style: AppTextStyle.robotoBold?.copyWith(
                  color: AppColors.white,
                  fontSize: 24.sp,
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(height: 16),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Popular(title: "All"),
                    Popular(title: "Mocha"),
                    Popular(title: "Latte"),
                    Popular(title: "Cappucino"),
                    Popular(title: "Espresso"),
                  ],
                ),
              ),
              // SizedBox(
              //   height: 250,
              //   child: ListView(
              //     scrollDirection: Axis.horizontal,
              //     children: [
              //       ClipRRect(child: Image.asset(AppImages.cappucino),
              //       borderRadius: BorderRadius.circular(8.r)),
              //       SizedBox(width: 10,),
              //       ClipRRect(child: Image.asset(AppImages.cappucino),
              //           borderRadius: BorderRadius.circular(8.r)),
              //       SizedBox(width: 10,),
              //       ClipRRect(child: Image.asset(AppImages.cappucino),
              //           borderRadius: BorderRadius.circular(8.r)),
              //       SizedBox(width: 10,),    ClipRRect(child: Image.asset(AppImages.cappucino),
              //           borderRadius: BorderRadius.circular(8.r)),
              //       SizedBox(width: 10,),
              //
              //     ],
              //   ),
              // ),

              Padding(
                padding:EdgeInsets.symmetric(horizontal:24.w,vertical:10.h),
                child: Column(
                  children: [
                    ...List.generate(coffees.length~/2, (index){
                      return Column(children: [
                        SizedBox(height:16.h,),
                        Row(children: [
                          Expanded(child:ZoomTapAnimation(
                            onTap: (){
                              Navigator.push(context,MaterialPageRoute(builder: (context){
                                return DetailScreen(coffeeModel: coffees[index],);
                              }));
                              setState(() {});
                            },
                            child:Image.asset((coffees[index].image),width:178.w,height:238.h,fit: BoxFit.fill,),
                          )),
                          SizedBox(width: 24.w,),
                          Expanded(child:ZoomTapAnimation(
                            onTap: (){
                              Navigator.push(context,MaterialPageRoute(builder: (context){
                                return DetailScreen(coffeeModel: coffees[coffees.length-1-index]);
                              }));
                              setState(() {});
                            },
                            child:  Image.asset((coffees[(coffees.length-1)-index].image),width:178.w,height:238.h,fit: BoxFit.fill,),
                          )),
                        ],)
                      ],);
                    })
                  ],),
              )

            ],
          ),
        ),
      ),
    );
  }
}
